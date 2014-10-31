class BlankMap
  
  attr_reader :window, :width, :height
  
  def initialize(window, width, height)
    @window     = window
    @width      = width
    @height     = height
    @tiles = []
  end
  
  def draw
    draw_tiles
  end
  
  private
  
  def dimensions
    @dimensions ||= Dimensions.new(width, height)
  end
  
  def draw_tiles
    tiles.each do |tile|
      #puts "tile: #{tile.tile_index} #{tile.x},#{tile.y}"
      tile.draw
    end
  end
  
end