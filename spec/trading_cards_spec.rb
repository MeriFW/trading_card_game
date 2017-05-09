require 'rspec'
require_relative './../src/player'

describe 'Trading card' do
  context 'player' do
    it 'starts with some amount of health' do
      player = Player.new

      result = player.remaining_health?(30)

      expect(result).to be(true)
    end

    it 'starts with zero mana slots' do
      player = Player.new

      result = player.available_mana_slots?(0)

      expect(result).to be(true)
    end
  end
end
