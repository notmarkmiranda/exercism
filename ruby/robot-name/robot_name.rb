class Robot
  attr_accessor :name


  def initialize
    reset
  end

  def reset
    letters = [*"A".."Z"].sample(2)
    numbers = [*"0".."9"].sample(3)
    @name = (letters + numbers).join
  end

end

module BookKeeping
  VERSION = 2
end
