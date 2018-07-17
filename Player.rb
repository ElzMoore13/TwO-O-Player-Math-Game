class Player
  attr_accessor :name, :lives

  def initialize(name)
    @lives = 3
    @name = name
  end

  def loseLife
    @lives -= 1
  end

  def is_dead?
    @lives == 0
  end

end
