class Player
  
  VELOCITY = 3
  
  attr_reader :x, :y
  
  def initialize(window)
    @image = Gosu::Image.new(window, "media/player_1.png", false)
    @x     = 0.0
    @y     = 0.0
    @angle = 0.0
    @score = 0
  end

  def warp(x, y)
    @x, @y = x, y
  end
  
  def walk_left
    @x -= VELOCITY
  end
  
  def walk_right
    @x += VELOCITY
  end
  
  def walk_up
    @y -= VELOCITY
  end
  
  def walk_down
    @y += VELOCITY
  end

  def draw
    @image.draw_rot(@x, @y, 1, @angle)
  end
end