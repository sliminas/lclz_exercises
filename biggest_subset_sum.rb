# frozen_string_literal: true

# Challenge 2
class BiggestSubsetSum
  def self.call(array)
    subsets = []

    (1..array.length).each do |subset_length|
      (0..(array.length - subset_length)).each do |subset_start|
        subset_end = subset_start + subset_length - 1
        subset = array[subset_start..subset_end]

        subsets << {
          sum:     subset.sum,
          indices: [subset_start, subset_end],
          subset:  subset
        }
      end
    end

    # currently returns the smallest subset if bigger set including zero at the end or the start exist
    subsets.max { |set1, set2| set1[:sum] <=> set2[:sum] }[:indices]
  end
end
