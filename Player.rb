# A player class that controls for the name and score of the players.
# Players will be prompted to take turns answering math questions.
class Player
  attr_reader :name, :lives

  def initialize(name, lives = 3)
    @name = name
    @lives = lives
  end
end