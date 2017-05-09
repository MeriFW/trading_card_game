require_relative './../src/player'

describe 'Player' do
  it 'starts with 30 points of health' do
    player = Player.new

    result = player.remaining_health?(30)

    expect(result).to be(true)
  end

  it 'starts with 0 mana slots' do
    player = Player.new

    result = player.available_mana_slots?(0)

    expect(result).to be(true)
  end
end
