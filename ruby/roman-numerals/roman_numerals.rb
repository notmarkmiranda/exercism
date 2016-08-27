class Fixnum

  RN = {
    1000 => "M", 900 => "CM", 500 => "D", 400 => "CD", 100 => "C", 90 => "XC",
    50 => "L", 40 => "XL", 10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I"
  }

  def to_roman
    ret_val = ""
    current_num = self

    RN.each do |number, roman|
      while current_num >= number
        current_num -= number
        ret_val << roman
      end
    end

    ret_val
  end

  VERSION = 1
end
