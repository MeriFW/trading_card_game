require_relative './deck'
require_relative './hand'

class Player
  def initialize
    @deck = Deck.new([])
    @hand = Hand.new
    @mana_slots = 0
    @health = 30
  end

  def remaining_health?(points)
    @health == points
  end

  def available_mana_slots?(slots)
    @mana_slots == slots
  end

  def cards_in_hand?(amount)
    @hand.remaining_cards?(amount)
  end

  def cards_in_deck?(amount)
    @deck.remaining_cards?(amount)
  end

  def receive_deck(deck)
    @deck = deck
  end

  private

  def draw(card)
    card = @deck.draw
    @hand.receive(card)
  end
end
