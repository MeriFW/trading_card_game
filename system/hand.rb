class Hand
  def initialize
    @cards = Array.new
  end

  def remaining_cards?(amount)
    @cards.length == amount
  end

  def receive(card)
    @cards.push(card)
  end
end
