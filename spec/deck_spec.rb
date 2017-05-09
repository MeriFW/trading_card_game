require_relative './../src/deck'

describe 'Deck' do
  it 'starts complete' do
    deck = Deck.new

    remaining_cards = deck.remaining_cards?(20)
    complete = deck.complete?

    expect(remaining_cards).to be(true)
    expect(complete).to be(true)
  end
end
