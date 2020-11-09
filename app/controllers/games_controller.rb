class GamesController < ApplicationController
  VOWELS = %w(A E I O U)

  def new
    # display a new random grid and a form
    @letters = Array.new(5) { VOWELS.sample }
    @letters += Array.new(5) { (('A'..'Z').to_a - VOWELS).sample }
    @letters.shuffle!
  end

  def score
    # form will be submitted (with POST)
    raise
  end
end
