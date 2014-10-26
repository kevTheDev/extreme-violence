require 'gosu'
require_relative 'player'

class GameWindow < Gosu::Window
  def initialize
    super(640, 480, false)
    self.caption = "Extreme Violence"
    
    @background = Gosu::Color.rgb(186, 186, 186)
    
    @player = Player.new(self)
    @player.warp(320, 240)
  end

  def update
    if button_down? Gosu::KbLeft or button_down? Gosu::GpLeft then
      @player.turn_left
    end
    if button_down? Gosu::KbRight or button_down? Gosu::GpRight then
      @player.turn_right
    end
    if button_down? Gosu::KbUp or button_down? Gosu::GpButton0 then
      @player.accelerate
    end
    @player.move
  end

  def draw
    draw_background
    draw_player
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
end

window = GameWindow.new
window.show