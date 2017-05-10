require_relative './../system/card'

describe 'Card' do
  it 'has a mana cost' do
    some_card = Card.new(some_mana_cost)
    some_other_card = Card.new(some_other_mana_cost)


    expect(some_card.cost).to be(1)
    expect(some_other_card.cost).to be(2)
  end

  def some_mana_cost
    1
  end

  def some_other_mana_cost
    2
  end
end
