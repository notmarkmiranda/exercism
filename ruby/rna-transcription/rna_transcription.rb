class Complement

  def self.of_dna(incoming)
    individual_letters = incoming.chars

    individual_letters.map do |letter|
      case_conversion(letter)
    end.join
  end

  def self.case_conversion(letter)
    case letter
    when "C"
      "G"
    when "G"
      "C"
    when "T"
      "A"
    when "A"
      "U"
    else
      raise ArgumentError
    end
  end

# 'ACGTGGTCTTAA'
# break string into letters
# convert each letter to the correct letter
# smash it together into a string again
end
