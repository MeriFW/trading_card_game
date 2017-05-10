class CardFactory
  def self.create(cost)
    Card.new(cost)
  end

  def self.create_random
    Card.new(Random.rand(9))
  end
end
