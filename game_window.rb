require 'gosu'
require_relative 'player'
require_relative 'block'

class GameWindow < Gosu::Window
  def initialize
    super(1280, 960, false)
    self.caption = "Extreme Violence"
    
    @background = Gosu::Color.rgb(186, 186, 186)
    
    @player = Player.new(self)
    @player.warp(320, 240)
    
    @block = Block.new(self, 50, 50, 20, 20)
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
  end

  def draw
    draw_background
    draw_player
    draw_block
  end
  
  def draw_background
    draw_quad\
      0,     0,      @background,
      0,     height, @background,
      width, height, @background,
      width, 0,      @background, 0
  end
  
  def draw_player
    @player.draw
  end
  
  def draw_block
    @block.draw
  end
end

window = GameWindow.new
window.show