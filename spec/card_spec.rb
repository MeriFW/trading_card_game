require_relative './../system/card'

describe 'Card' do
  it 'has a mana cost' do
    some_card = Card.new(some_mana_cost, :damage)
    some_other_card = Card.new(some_other_mana_cost, :damage)


    expect(some_card.cost).to be(1)
    expect(some_other_card.cost).to be(2)
  end

  it 'has a damage points' do
    some_card = Card.new(:mana, some_damage_points)
    some_other_card = Card.new(:mana, some_other_damage_points)


    expect(some_card.damage).to be(1)
    expect(some_other_card.damage).to be(2)
  end

  def some_mana_cost
    1
  end

  def some_other_mana_cost
    2
  end

  def some_damage_points
    1
  end

  def some_other_damage_points
    2
  end
end
