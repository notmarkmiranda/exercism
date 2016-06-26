require 'pry'
class Sieve
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def primes
    binding.pry
  end

end
