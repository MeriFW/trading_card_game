require_relative './factories/deck_factory'

class Game
  def initialize(players)
    @players = players
    deal_decks
  end

  def start
    prepare
  end

  private

  def prepare
    player = @players[0]

    deal_hand(player)
    deal_mana_slot(player)
  end

  private

  def deal_mana_slot(player)
    player.obtain_mana_slot
  end

  def deal_hand(player)
    4.times { player.draw }
  end

  def deal_decks
    @players.each do |player|
      player.receive_deck(DeckFactory.create)
    end
  end
end
