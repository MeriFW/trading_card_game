require_relative './../system/player'

describe 'Player' do
  it 'borns with 30 points of health' do
    player = Player.new

    expect(player.remaining_health?(initial_health)).to be(true)
    expect(player.remaining_health?(some_wrong_value)).to be(false)
  end

  it 'starts with 0 mana slots' do
    player = Player.new

    expect(player.available_mana_slots?(initial_available_mana_slots)).to be(true)
    expect(player.available_mana_slots?(some_wrong_value)).to be(false)
  end

  it 'starts with no cards' do
    player = Player.new

    expect(player.cards_in_hand?(initial_cards_in_hand)).to be(true)
    expect(player.cards_in_deck?(initial_cards_in_deck)).to be(true)
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
end
