# Palette displays the different tile types the user can pick from when editing a map
class Palette
  
  attr_reader :window, :dimensions, :x, :y, :x2, :y2
  
  def initialize(window, dimensions)
    @window     = window
    @dimensions = dimensions
    @height = dimensions.tile_height * 5

    @x  = 0
    @x2 = dimensions.world_width
    @y2 = dimensions.world_height
    @y  = @y2 - @height
    
    @colour = Gosu::Color.rgb(255, 0, 0)
  end
  
  # TODO - draw the palette at the bottom of the screen
  # to start with it can just be a choice between white and grey tiles
  # it needs to be a rectangle at the bottom of the screen
  # width - world width
  # height 2x tile width
  def draw
    window.draw_quad\
      x,     y,    @colour,
      x2,    y,    @colour,
      x,     y2,   @colour,
      x2,    y2,   @colour
  end
  
end