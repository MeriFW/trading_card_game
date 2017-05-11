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

  it 'prepares the first turn' do
    some_player = Player.new
    some_other_player = Player.new
    game = Game.new([some_player, some_other_player])

    game.start

    expect(some_player.cards_in_hand?(4)).to be(true)
    expect(some_player.cards_in_deck?(initial_cards_in_deck - 4)).to be(true)
    expect(some_player.available_mana_slots?(1)).to be(true)
    expect(some_player.remaining_mana?(1)).to be(true)
  end

  def initial_cards_in_deck
    20
  end

  def some_wrong_value
    234234
  end
end
