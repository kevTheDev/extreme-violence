class Map
  
  attr_reader :window, :width, :height, :blocks
  
  def initialize(window, width, height)
    @window     = window
    @width      = width
    @height     = height
    @background = Gosu::Color.rgb(186, 186, 186)
    @blocks     = ::BlocksGenerator.new(window, width, height).generate
  end
  
  def draw
    draw_background
    draw_blocks
  end
  
  private
  
  def draw_blocks
    blocks.each { |block| block.draw }
  end
  
  def draw_background
    window.draw_quad\
      0,     0,      @background,
      0,     height, @background,
      width, height, @background,
      width, 0,      @background, 0
  end
  
end