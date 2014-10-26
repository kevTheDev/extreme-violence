require 'gosu'
require_relative 'player'
require_relative 'block'
require_relative 'map'

class GameWindow < Gosu::Window
  def initialize
    super(1280, 960, false)
    self.caption = "Extreme Violence"
    
    @player = Player.new(self)
    @player.warp(320, 240)
    
    @map = Map.new(self)
  end

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
    
    # Scrolling follows player
    @camera_x = [[@player.x - 320, 0].max, @map.width * 50 - 640].min
    @camera_y = [[@player.y - 240, 0].max, @map.height * 50 - 480].min
  end

  def draw
    translate(-@camera_x, -@camera_y) do
      @map.draw
      @player.draw
    end
  end
  
  
  
  def draw_player
    @player.draw
  end
  
end

window = GameWindow.new
window.show