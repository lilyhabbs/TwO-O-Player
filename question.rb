class Question
  # generate question
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @sum = @num1 + @num2
  end

  def display_question current_player
    puts "#{current_player.name}: What does #{@num1} plus #{@num2} equal?"
  end

  # check answer
  def check_answer current_player, player_guess
    unless player_guess == @sum
      puts "👎 SORRY! The correct answer is #{@sum}."
      current_player.decrement_score
    else
      puts "👏 YES! You are correct."
    end
  end
end