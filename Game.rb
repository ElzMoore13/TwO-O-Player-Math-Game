require './Question'

class Game

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @curr_player = player_2
    @next_player = player_1
  end

  def score
    puts "SCORE-- P1: #{@player_1.lives}/3,  P2: #{@player_2.lives}/3"
  end

  def game_is_over?
    @player_1.is_dead? || @player_2.is_dead?
  end

  def next_turn
    puts "\n----- NEW TURN -----\n"
    temp = @curr_player
    @curr_player = @next_player
    @next_player = temp
    next_q = Question.new(@curr_player)
    next_q.ask_question
    next_q.game_response
    score
  end

  def game_ended
    if @player_1.is_dead?
      winner = @player_2
    else
      winner = @player_1
    end
    puts "\n-----GAME OVER-----\n\n#{winner.name} has won with a score of #{winner.lives}/3!\n\nbyeeeeeee\n\n"
  end

end
