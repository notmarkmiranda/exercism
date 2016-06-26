class Pangram

  VERSION = 1

  def self.is_pangram?(string)
    magic_shit(string) == 26
  end

  def self.magic_shit(string)
    ns = string.split.join.delete("^a-zA-Z").downcase
    count_letters(ns)
  end

  def self.count_letters(ns)
    ns.chars.map do |letter|
      letter
    end.uniq.size
  end

end
