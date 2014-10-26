class BlocksGenerator
  
  attr_reader :window, :width, :height
  
  # generates a bunch of blocks to be rendered in the window
  def initialize(window, width, height)
    @window = window
    @width  = width
    @height = height
  end
  
  def generate
    @blocks ||= generate_blocks
  end
  
  private
  
  def generate_blocks
    blocks = []
    blocks << Block.new(window, 50, 50, 20, 20)
    blocks
  end
  
end