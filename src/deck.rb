class Deck
  def initialize(cards)
    @cards = cards
  end

  def remaining_cards?(amount)
    @cards.length == amount
  end

  def contains?(criteria)
    @cards.all? { |card| card.equal?(criteria) }
  end

  def draw
    @cards.pop
  end
end
