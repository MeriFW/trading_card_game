require_relative './deck'
require_relative './hand'

class Player
  def initialize(deck)
    @deck = deck
    @hand = Hand.new
    @mana_slots = 0
    @health = 30
  end

  def receive_deck(deck)
    @deck = deck
  end

  def draw
    card = @deck.draw
    @hand.receive(card)
  end

  def obtain_mana_slot
    @mana_slots += 1
  end

  def refill_mana
  end

  def remaining_mana?(points)
    true
  end

  def remaining_health?(points)
    @health == points
  end

  def available_mana_slots?(amount)
    @mana_slots == amount
  end

  def cards_in_hand?(amount)
    @hand.remaining_cards?(amount)
  end

  def cards_in_deck?(amount)
    @deck.remaining_cards?(amount)
  end
end
