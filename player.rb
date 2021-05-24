class Player
  attr_reader :name, :score

  def initialize name
    @name = name
    @score = 3
  end

  # reduce score if answer is incorrect
  def decrement_score
    @score -= 1
  end

  # check if player has no lives left
  def game_over?
    @score === 0
  end
end