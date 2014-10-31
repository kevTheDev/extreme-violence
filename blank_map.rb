class BlankMap
  
  attr_reader :window, :map_width, :map_height, :tiles
  
  def initialize(window, map_width, map_height)
    @window     = window
    @map_width  = map_width
    @map_height = map_height
    @tiles      = ::TilesGenerator.new(window, dimensions).tiles
  end
  
  def draw
    draw_tiles
  end
  
  private
  
  def dimensions
    @dimensions ||= Dimensions.new(map_width, map_height)
  end
  
  def draw_tiles
    tiles.each do |tile|
      #puts "tile: #{tile.tile_index} #{tile.x},#{tile.y}"
      tile.draw
    end
  end
  
end