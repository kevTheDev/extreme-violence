class TilesGenerator
  
  attr_reader :window, :world_width, :world_height
  
  # generates background tiles
  def initialize(window, world_width, world_height)
    @window       = window
    @world_width  = world_width
    @world_height = world_height
  end
  
  def tiles
    @tiles ||= generate_tiles
  end
  
  def tile_width
    @tile_width ||= (world_width / 80)
  end

  def tile_height
    @world_height ||= (world_height / 80)
  end

  def x_number_of_tiles
    @x_number_of_tiles ||= (world_width / tile_width)
  end

  def y_number_of_tiles
    @y_number_of_tiles ||= (world_height / tile_height)
  end

  
  private
  
  def generate_tiles
    tiles      = []
    tile_index = 0
    
    y_number_of_tiles.times do |row|
      x_number_of_tiles.times do |column|
        tile_index += 1
        
        x = (row * tile_width)
        y = (row * tile_height)
        
        
        tile = Tile.new(window, x, y, tile_width, tile_height, tile_index)
        tiles << tile
      end
    end
    
    tiles
  end
  
end