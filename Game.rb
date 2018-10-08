# Keeps tracks on the state of the current game
# Which player's turn; and checking if the game is done
# Methods to check for conditions that could change the state of game.
# Methods to start the game etc...
class Game

  def initialize(*players)
    @players = players.shuffle
    @game_ended = false
    @round = 0
    @questions = []
    @state_string = '----NEW TURN----'
  end

  def start
    while !@game_ended
      @players.each do |player|
        add_question
        puts "#{player.name}'s turn!"
        turn(player)
        if @game_ended
          break
        end
      end
    end
    puts "GoodBye! There was a total of #{@round} round(s)!"
  end

  private

  def add_question
    @questions << Question.new
  end

  def prompt_validate?(round)
    current_question = @questions[round]
    puts current_question.string
    answer = gets.chomp.to_i
    current_question.check_answer?(answer)
  end

  def turn(player)
    correct = prompt_validate?(@round)
    if !correct
      player.lives -= 1
      puts 'You Dumb Dumb!'
    else
      puts 'Genisus!'
    end
    if player.lives == 0
      @game_ended = true
    end
    if @game_ended
      @state_string = '----GAME OVER----'
    end
    puts @state_string
    @round += 1
  end

end