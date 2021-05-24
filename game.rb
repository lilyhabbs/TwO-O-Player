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
end