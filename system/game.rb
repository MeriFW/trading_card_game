require_relative './factories/deck_factory'

class Game
  def initialize(players)
    @players = players
    deal_decks
  end

  def start
    player = @players[0]

    4.times { player.draw }
    player.obtain_mana_slot
  end

  private

  def deal_decks
    @players.each do |player|
      player.receive_deck(DeckFactory.create)
    end
  end
end
