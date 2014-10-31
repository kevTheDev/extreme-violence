# Palette displays the different tile types the user can pick from when editing a map
class Palette
  
  attr_reader :window, :dimensions
  
  def initialize(window, dimensions)
    @window     = window
    @dimensions = dimensions
  end
  
  # TODO - draw the palette at the bottom of the screen
  # to start with it can just be a choice between white and grey tiles
  def draw
  end
  
end