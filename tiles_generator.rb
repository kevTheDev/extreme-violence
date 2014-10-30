class TilesGenerator
  
  attr_reader :window, :dimensions
  
  # generates background tiles
  def initialize(window, dimensions)
    @window     = window
    @dimensions = dimensions
  end
  
  def tiles
    @tiles ||= generate_tiles
  end
    
  private
  
  def generate_tiles
    tile_width = dimensions.tile_width
    tile_height = dimensions.tile_height
    
    x_number_of_tiles = dimensions.x_number_of_tiles
    y_number_of_tiles = dimensions.y_number_of_tiles
    
    puts "World height: #{dimensions.world_height}"
    puts "Tile height: #{dimensions.tile_height}"
    
    tiles      = []
    tile_index = 0
    
    puts "y_number_of_tiles: #{dimensions.y_number_of_tiles}"
    puts "x_number_of_tiles: #{dimensions.x_number_of_tiles}"
    
    y_number_of_tiles.times do |row|
      x_number_of_tiles.times do |column|
        tile_index += 1
        
        x = (column * tile_width)
        y = (row * tile_height)
        
        
        tile = Tile.new(window, x, y, tile_width, tile_height, tile_index)
        tiles << tile
      end
    end
    
    tiles
  end
  
end