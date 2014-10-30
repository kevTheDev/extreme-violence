class Dimensions
  
  attr_reader :world_width, :world_height
  
  def initialize(world_width, world_height)
    @world_width  = world_width
    @world_height = world_height
  end
  
  def tile_width
    @tile_width ||= (world_width / 80)
  end

  def tile_height
    @tile_height ||= (world_height / 80)
  end

  def x_number_of_tiles
    @x_number_of_tiles ||= (world_width / tile_width)
  end

  def y_number_of_tiles
    @y_number_of_tiles ||= (world_height / tile_height)
  end
  
end