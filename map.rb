class Map
  
  attr_reader :window, :width, :height
  
  def initialize(window, width, height)
    @window     = window
    @width      = width
    @height     = height
    @block      = Block.new(window, 50, 50, 20, 20)
    @background = Gosu::Color.rgb(186, 186, 186)
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