require_relative './card_factory'

class DeckFactory
  def self.create
    Deck.new([card(0), card(1), card(2), card(3), card(4),
card(5), card(6), card(7), card(8), random_card,
random_card, random_card, random_card, random_card, random_card,
random_card, random_card, random_card, random_card, random_card])
  end

  def self.card(cost)
    CardFactory.create(cost)
  end

  def self.random_card
    CardFactory.create_random
  end
end
