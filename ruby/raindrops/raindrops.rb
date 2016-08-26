class Raindrops
  VERSION = 1
  def self.convert(number)
    @string = ""
    check_number(number)
    @string == "" ? number.to_s : @string
  end

  def self.check_number(number)
    if number % 3 == 0
      @string += "Pling"
    end
    if number % 5 == 0
      @string += "Plang"
    end
    if number % 7 == 0
      @string += "Plong"
    end
  end
end
