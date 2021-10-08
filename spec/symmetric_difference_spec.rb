# frozen_string_literal: true

require_relative './spec_helper'
require_relative '../symmetric_difference'

describe SymmetricDifference do
  it 'returns an empty array if both arrays contain the same elements' do
    expect(described_class.call([], [])).to eq []
    expect(described_class.call([1], [1])).to eq []
    expect(described_class.call([1, 2], [1, 2])).to eq []
  end

  it 'returns an array with numbers that do not exist in both arrays' do
    expect(described_class.call([1], [])).to eq [1]
    expect(described_class.call([], [1])).to eq [1]

    expect(described_class.call([1, 2], [1])).to eq [2]
    expect(described_class.call([1], [1, 2])).to eq [2]

    expect(described_class.call([1, 2], [2])).to eq [1]
    expect(described_class.call([2], [1, 2])).to eq [1]

    expect(described_class.call([1, 2], [2, 3])).to eq [1, 3]
    expect(described_class.call([1, 2, 3], [2])).to eq [1, 3]
    expect(described_class.call([], [1, 2])).to eq [1, 2]

    expect(described_class.call([1, 2, 3], [])).to eq [1, 2, 3]
    expect(described_class.call([], [1, 2, 3])).to eq [1, 2, 3]
    expect(described_class.call([2], [1, 2, 3])).to eq [1, 3]

    expect(described_class.call([2, 2, 2], [1, 2, 3, 3])).to eq [1, 3]
  end
end
