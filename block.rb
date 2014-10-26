class Block
  
  attr_reader :window, :x, :y, :width, :height
  
  def initialize(window, x, y, width, height)
    @window = window
    @x      = x
    @y      = y
    @width  = width
    @height = height
    
    @colour = Gosu::Color.rgb(255, 255, 255)
  end
  
  def draw
    window.draw_quad\
      x,     y,      @colour,
      y,     height, @colour,
      width, height, @colour,
      width, x,      @colour
  end
      
  
end