# frozen_string_literal: true

# Challenge 5
class SymmetricDifference
  def self.call(array1, array2)
    array1.union(array2) - (array1 & array2)
  end
end
