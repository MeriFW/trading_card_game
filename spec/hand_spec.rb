require_relative './../src/hand'

describe 'Hand' do
  it 'receives cards' do
    hand = Hand.new

    hand.receive(some_card)

    expect(hand.remaining_cards?(1)).to be(true)
    expect(hand.remaining_cards?(2)).to be(false)
  end

  def some_card
    Card.new
  end
end
