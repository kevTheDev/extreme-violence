class BlocksGenerator
  
  attr_reader :window, :dimensions
  
  # generates a bunch of blocks to be rendered in the window
  def initialize(window, dimensions)
    @window     = window
    @dimensions = dimensions
  end
  
  def generate
    @blocks ||= generate_blocks
  end
  
  private
  
  def generate_blocks
    blocks = []
    blocks_index = 0
    
    world_width  = dimensions.world_width
    world_height = dimensions.world_height
    
    tile_width  = dimensions.tile_width
    tile_height = dimensions.tile_height
    
    10.times do
      blocks_index += 1
      x = rand(world_width)
      y = rand(world_height)
      
      block_width  = rand(20) * tile_width
      block_height = rand(30) * tile_height
    
      blocks << Block.new(window, x, y, block_width, block_height, blocks_index)
    end
    
    blocks
  end
  
end