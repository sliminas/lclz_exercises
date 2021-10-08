# frozen_string_literal: true

require_relative './spec_helper'
require_relative '../length_of_last_word'

describe LengthOfLastWord do
  it 'returns the length of the last word in a normal sentence' do
    expect(described_class.call('Hello World')).to eq 5
    expect(described_class.call('luffy is still joyboy')).to eq 6
  end

  it 'handles spaces in the end of the string' do
    expect(described_class.call(' fly me    to    the moon   ')).to eq 4
  end

  it 'handles one word' do
    expect(described_class.call('foobar')).to eq 6
  end

  it 'handles one word with spaces' do
    expect(described_class.call('    foobar    ')).to eq 6
  end
end
