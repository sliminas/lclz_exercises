# frozen_string_literal: true

require_relative './spec_helper'
require_relative '../first_longest_character_sequence'

describe FirstLongestCharacterSequence do
  it 'returns the first x characters if string starts with longest sequence' do
    expect(described_class.call('Boat')).to eq 'B'
    expect(described_class.call('BBoat')).to eq 'BB'
    expect(described_class.call('BBBoat')).to eq 'BBB'
    expect(described_class.call('BBBBoat')).to eq 'BBBB'
  end

  it 'handles spaces' do
    expect(described_class.call('A hot  dog')).to eq '  '
  end

  it 'returns the first longest character sequence in the string' do
    expect(described_class.call('Pressuuuuuureeeeee')).to eq 'uuuuuu'
    expect(described_class.call('Pressuuuuuureeeeeee')).to eq 'eeeeeee'
    expect(described_class.call('Pressuure')).to eq 'ss'
    expect(described_class.call('Preuussre')).to eq 'uu'
  end
end
