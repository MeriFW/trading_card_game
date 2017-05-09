require_relative './../src/deck'

describe 'Deck' do
  it 'starts with 20 cards' do
    deck = Deck.new

    result = deck.remaining_cards?(20)

    expect(result).to be(true)
  end

  it 'contains cards with different mana costs' do
    deck = Deck.new

    result = deck.complete?

    expect(result).to be(true)
  end
end
