require 'gosu'
require_relative 'player'
require_relative 'tile'
require_relative 'block'
require_relative 'tiles_generator'
require_relative 'blocks_generator'
require_relative 'dimensions'
require_relative 'map'
require_relative 'blank_map'
require_relative 'palette'


class MapEditor < Gosu::Window
  
  VIEWPORT_SIZE_X = 640
  VIEWPORT_SIZE_Y = 480
  
  WORLD_SIZE_X = 1280
  WORLD_SIZE_Y = 960
  
  def initialize
    super(VIEWPORT_SIZE_X, VIEWPORT_SIZE_Y, false)
    
    offsetMaxX = WORLD_SIZE_X - VIEWPORT_SIZE_X
    offsetMaxY = WORLD_SIZE_Y - VIEWPORT_SIZE_Y
    offsetMinX = 0
    offsetMinY = 0
    
    self.caption = "Extreme Violence - Map Editor"
    
    @map = BlankMap.new(self, WORLD_SIZE_X, WORLD_SIZE_Y)
    
    @player = Player.new(self)
    @player.warp(320, 240)
    
    @camera_x = @camera_y = 0
    
    @dimensions = Dimensions.new(WORLD_SIZE_X, WORLD_SIZE_Y)
    @palette    = Palette.new(self, @dimensions)
  end
  
  # TODO - on mouse click on palette select brush
  # TODO - on mouse click on map change tile to brush content
  def update
    
    if button_down?(Gosu::KbLeft) || button_down?(Gosu::GpLeft)
      @player.walk_left
    elsif button_down?(Gosu::KbRight) || button_down?(Gosu::GpRight)
      @player.walk_right
    elsif button_down?(Gosu::KbUp) || button_down?(Gosu::GpButton0)
      @player.walk_up
    elsif button_down?(Gosu::KbDown)
      @player.walk_down
    end
    
    @camera_x = @player.x - VIEWPORT_SIZE_X / 2
    @camera_y = @player.y - VIEWPORT_SIZE_Y / 2
  end

  # TODO - draw palette at bottom
  def draw
    translate(-@camera_x, -@camera_y) do
      @map.draw
      @player.draw
      @palette.draw
    end
  end
  
end

window = MapEditor.new
window.show