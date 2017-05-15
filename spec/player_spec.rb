require_relative './../system/player'
require_relative './../system/deck'

describe 'Player' do
  it 'borns with 30 points of health' do
    player = some_player

    expect(player.remaining_health?(initial_health)).to be(true)
    expect(player.remaining_health?(some_wrong_value)).to be(false)
  end

  it 'starts with 0 mana slots' do
    player = some_player

    expect(player.available_mana_slots?(initial_available_mana_slots)).to be(true)
    expect(player.available_mana_slots?(some_wrong_value)).to be(false)
  end

  it 'starts with no cards' do
    player = some_player

    expect(player.cards_in_hand?(initial_cards_in_hand)).to be(true)
    expect(player.cards_in_deck?(initial_cards_in_deck)).to be(true)
  end

  it 'draws one card at a time' do
    player = some_player

    player.draw

    expect(player.cards_in_hand?(single_card)).to be(true)
  end

  it 'obtains one mana slot at a time' do
    player = some_player
    player.obtain_mana_slot

    expect(player.available_mana_slots?(1)).to be(true)
  end

  it 'knows remaining mana' do
    player = some_player
    player.obtain_mana_slot

    player.refill_mana

    expect(player.remaining_mana?(1)).to be(true)
  end

  def some_player
    Player.new(Deck.new([]))
  end

  def initial_health
    30
  end

  def initial_available_mana_slots
    0
  end

  def initial_cards_in_deck
    0
  end

  def initial_cards_in_hand
    0
  end

  def some_wrong_value
    234234
  end

  def single_card
    1
  end
end
