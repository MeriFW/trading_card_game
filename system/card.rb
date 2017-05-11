class Card
  def initialize(cost=0, damage=0)
    @cost = cost
    @damage = damage
  end

  def cost
    @cost
  end

  def damage
    @damage
  end

  def equal?(card)
    card.cost == @cost
  end
end
