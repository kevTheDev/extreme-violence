class Block < Tile
  
  def initialize(window, x, y, width, height, tile_index)
    super(window, x, y, width, height, tile_index)
    @colour = Gosu::Color.rgb(255, 255, 255)
  end
  
  def solid?
    true
  end
  
end