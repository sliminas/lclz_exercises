# frozen_string_literal: true

require_relative './spec_helper'
require_relative '../biggest_subset_sum'

describe BiggestSubsetSum do
  it 'returns the start and end indices of the subset' do
    expect(described_class.call([1])).to eq [0, 0]
    expect(described_class.call([-1])).to eq [0, 0]

    expect(described_class.call([1, 1])).to eq [0, 1]
    expect(described_class.call([0, 1])).to eq [1, 1]
    expect(described_class.call([1, 0])).to eq [0, 0]
    expect(described_class.call([1, 0, 1])).to eq [0, 2]
    expect(described_class.call([0, 1, 0, 1])).to eq [1, 3]

    expect(described_class.call([-1, 1])).to eq [1, 1]
    expect(described_class.call([1, -1])).to eq [0, 0]
    expect(described_class.call([-1, 0])).to eq [1, 1]

    expect(described_class.call([1, 2, -1])).to eq [0, 1]
    expect(described_class.call([-1, 2, 1])).to eq [1, 2]
    expect(described_class.call([2, -4, 6, 8, -10, 100, -6, 5])).to eq [2, 5]
  end
end
