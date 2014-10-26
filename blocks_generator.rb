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
    
    10.times do
      
      #x = rand(width)
      #y = rand(height)
      x = rand(10)
      y = rand(10)
      
      block_width = 10#rand(60)
      
      block_height = 10#rand(35)
    
      blocks << Block.new(window, x, y, block_width, block_height)
    end
    
    blocks
  end
  
end