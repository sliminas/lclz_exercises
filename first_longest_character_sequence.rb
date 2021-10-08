# frozen_string_literal: true

# Challenge 1
class FirstLongestCharacterSequence
  def self.call(string)
    chars = string.chars
    longest_sequence = chars.first
    last_sequence = longest_sequence

    chars[1..].each do |char|
      char == last_sequence[0] ? last_sequence += char : last_sequence = char
      longest_sequence = last_sequence if last_sequence.size > longest_sequence.size
    end

    longest_sequence
  end
end
