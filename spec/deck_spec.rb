require_relative './../src/deck'
require_relative './../src/card'

describe 'Deck' do
  it 'can be provided up to 20 cards' do
    deck = Deck.new(basic_set)

    complete_deck = Deck.new(complete_set)

    expect(deck.remaining_cards?(3)).to be(false)
    expect(complete_deck.remaining_cards?(20)).to be(true)
  end

  it 'draws cards' do
    deck = Deck.new(basic_set)

    card = deck.draw

    expect(card).not_to eq(nil)
  end

  it 'knows its cards' do
    deck = Deck.new(basic_set)
    some_unavailable_card = some_card(1)

    expect(deck.contains?(some_card)).to be(true)
    expect(deck.contains?(some_unavailable_card)).to be(false)
  end

  def basic_set
    [some_card, some_card]
  end

  def complete_set
    [some_card(0), some_card(1), some_card(2), some_card(3), some_card(4),
some_card(5), some_card(6), some_card(7), some_card(8), some_card,
some_card, some_card, some_card, some_card, some_card,
some_card, some_card, some_card, some_card, some_card]
  end

  def some_card(cost=0)
    Card.new(cost)
  end
end
