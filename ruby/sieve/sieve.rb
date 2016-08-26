
class Sieve
  attr_reader :upper_limit
  def initialize(upper_limit)
    @upper_limit = upper_limit
  end

  def primes
    range = [*2..upper_limit]
    range.map { |number| prime_checker(number) }.compact
  end

  def prime_checker(number)
    ret_val = modulo_check([*2..number])
    ret_val.length > 1 ? nil : ret_val.pop
  end

  def modulo_check(range)
    range.map { |check| range[-1] if range[-1] % check == 0 }.compact
  end

end
