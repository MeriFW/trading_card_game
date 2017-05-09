require_relative './../src/hand'

describe 'Hand' do
  it 'starts with 4 cards' do
    hand = Hand.new

    result = hand.remaining_cards?(4)

    expect(result).to be(true)
  end
end
