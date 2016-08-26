class Hamming
  VERSION = 1

  def self.compute(a, b)

    unless a.chars.size == b.chars.size
      raise ArgumentError.new("Your entries are not the same length.")
    end

    diff = 0
    (0..a.chars.size - 1).each do |x|
      a.chars[x] == b.chars[x] ? true : diff += 1
    end
    diff
  end

end
