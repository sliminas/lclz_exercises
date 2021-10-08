# frozen_string_literal: true

# Challenge 3
class LengthOfLastWord
  def self.call(string)
    string.split(/ +/).last.length
  end
end
