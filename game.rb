class Game
  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @current_player = @player1
  end

  # switch players
  def switch_player current_player
    if current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
  end

  # game continues
  def continue_game
    puts "#{@player1.name}: #{@player1.score}/3 vs. #{@player2.name}: #{@player2.score}/3"
    puts "----- NEW TURN -----"
    switch_player @current_player
    turn
  end

  # game over
  def end_game winner
    puts "🎉 #{winner.name} wins with a score of #{winner.score}/3"
    puts "----- GAME OVER -----"
  end

  def turn
    # generate and display new question
    question = Question.new
    question.display_question @current_player

    # get user guess and compare to correct answer
    player_guess = gets.chomp.to_i
    question.check_answer @current_player, player_guess
    
    # check if game should continue or end
    if @current_player.game_over?
      @current_player == @player1 ? winner = @player2 : winner = @player1
      end_game winner
    else
      continue_game
    end
  end
end