class Question

  def initialize(curr_player)
    @curr_player = curr_player
    @question
    @correct_answer
    @player_guess
  end

  def rand_num(min, max)
    rand(max) + min
  end

  def make_question
    num_1 = rand_num(1, 20)
    num_2 = rand_num(1, 20)

    if rand(10) % 2 == 0
      operator = 'plus'
      @correct_answer = num_1 + num_2
    else
      operator = 'minus'
      @correct_answer = num_1 - num_2
    end

    @question = "#{@curr_player.name}, what does #{num_1} #{operator} #{num_2} equal?"
  end


  def ask_question
    make_question
    puts @question
    @player_guess = gets.chomp
  end
  

  def is_right?(guess)
    @correct_answer == guess.to_i
  end


  def game_response
    if is_right?(@player_guess)
      puts "Congrats #{@curr_player.name}! You are correct!\n\n"
    else
      puts "Damn #{@curr_player.name}.... no.... that was wrong!"
      puts "The correct answer is: #{@correct_answer}\n\n"
      @curr_player.loseLife
    end
  end

end
