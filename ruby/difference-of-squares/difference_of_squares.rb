class Squares
  attr_reader :num
  VERSION = 2
  
  def initialize(num)
    @num = num
  end

  def construct_array(num, sum)
    sum << num
    num -= 1
    num >= 1 ? construct_array(num, sum) : sum
  end

  def square_of_sum
    ary = construct_array(num, [])
    ary.reduce(:+) ** 2
  end

  def sum_of_squares
    array = construct_array(num, [])
    array.map do |number|
      number ** 2
    end.reduce(:+)
  end

  def difference
    square_of_sum - sum_of_squares
  end

end
