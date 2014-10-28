class Block
  
  attr_reader :window, :x, :y, :width, :height, :x2, :y2
  
  def initialize(window, x, y, width, height)
    @window = window
    @x      = x
    @y      = y
    @width  = width
    @height = height
    @x2     = x + width
    @y2     = y + height
    
    @colour = Gosu::Color.rgb(255, 255, 255)
  end
  
  def draw
    window.draw_quad\
      x,     y,      @colour,
      x2,    y, @colour,
      x, y2, @colour,
      x2, y2,      @colour
  end
      
  
end