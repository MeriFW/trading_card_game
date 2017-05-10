class Card
  def initialize(cost=0)
    @cost = cost
  end

  def cost
    @cost
  end

  def equal?(card)
    card.cost == @cost
  end
end
