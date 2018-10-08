# Keeps tracks on the state of the current game
# Which player's turn; and checking if the game is done
# Methods to check for conditions that could change the state of game.
# Methods to start the game etc...
class Game
  def initialize(*players)
    @players = players.shuffle
    @game_ended = false
    @turn = 0
    @rounds = 0
  end

end