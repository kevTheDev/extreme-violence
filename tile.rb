class Tile
  
  attr_reader :window, :x, :y, :width, :height, :x2, :y2, :colour, :tile_index
  
  def initialize(window, x, y, width, height, tile_index)
    @window     = window
    @x          = x
    @y          = y
    @width      = width
    @height     = height
    @x2         = x + width
    @y2         = y + height
    @tile_index = tile_index
    
    @colour     = Gosu::Color.rgb(186, 186, 186)
  end
  
  def draw
    window.draw_quad\
      x,     y,    @colour,
      x2,    y,    @colour,
      x,     y2,   @colour,
      x2,    y2,   @colour
  end

  def solid?
    false
  end


end