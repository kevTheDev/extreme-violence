require 'gosu'

class GameWindow < Gosu::Window
  def initialize
    super(640, 480, false)
    self.caption = "Extreme Violence"
    
    @background = Gosu::Color.rgb(186, 186, 186)
  end

  def update
  end

  def draw
    draw_quad\
      0,     0,      @background,
      0,     height, @background,
      width, height, @background,
      width, 0,      @background, 0
  end
end

window = GameWindow.new
window.show