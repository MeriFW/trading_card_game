require_relative './../system/game'
require_relative './../system/player'
require_relative './../system/factories/deck_factory'

describe 'Game' do
  it 'prepares table' do
    some_player = new_player
    game = Game.new([some_player, new_player])

    expect(some_player.cards_in_deck?(initial_cards_in_deck)).to be(true)
    expect(some_player.cards_in_deck?(some_wrong_value)).to be(false)
  end

  it 'prepares the first turn' do
    some_player = new_player
    game = Game.new([some_player, new_player])

    game.start

    expect(some_player.cards_in_hand?(initial_cards_in_hand)).to be(true)
    expect(some_player.available_mana_slots?(initial_mana_slots)).to be(true)
    expect(some_player.remaining_mana?(initial_mana)).to be(true)
  end

  def new_player
    Player.new(DeckFactory.create)
  end

  def initial_cards_in_deck
    20
  end

  def some_wrong_value
    234234
  end

  def initial_cards_in_hand
    4
  end

  def initial_mana_slots
    1
  end

  def initial_mana
    1
  end
end
