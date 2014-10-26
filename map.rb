class Map
  
  WIDTH  = 2560
  HEIGHT = 1920
  
  attr_reader :window
  
  def initialize(window)
    @window     = window
    @block      = Block.new(window, 50, 50, 20, 20)
    @background = Gosu::Color.rgb(186, 186, 186)
  end
  
  def width
    WIDTH
  end
  
  def height
    HEIGHT
  end
  
  def draw
    draw_background
    draw_blocks
  end
  
  def draw_blocks
    @block.draw
  end
  
  def draw_background
    window.draw_quad\
      0,     0,      @background,
      0,     height, @background,
      width, height, @background,
      width, 0,      @background, 0
  end
  
end