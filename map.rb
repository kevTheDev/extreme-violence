class Map
  
  attr_reader :window, :width, :height
  
  def initialize(window, width, height)
    @window     = window
    @width      = width
    @height     = height
  end
  
  def draw
    draw_tiles
    draw_blocks
  end
  
  private
  
  def blocks
    @blocks ||= ::BlocksGenerator.new(window, width, height).generate
  end
  
  def tiles
    @tiles ||= ::TilesGenerator.new(window, width, height).generate
  end
  
  def draw_tiles
    tiles.each { |tile| tile.draw }
  end
  
  def draw_blocks
    blocks.each { |block| block.draw }
  end
  
  
  
end