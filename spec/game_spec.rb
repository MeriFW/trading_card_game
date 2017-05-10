require_relative './../system/game'
require_relative './../system/player'

describe 'Game' do
  it 'prepares table' do
    some_player = Player.new
    some_other_player = Player.new

    game = Game.new([some_player, some_other_player])

    expect(some_player.cards_in_deck?(initial_cards_in_deck)).to be(true)
    expect(some_player.cards_in_deck?(some_wrong_value)).to be(false)
  end

  def initial_cards_in_deck
    20
  end

  def some_wrong_value
    234234
  end
end
