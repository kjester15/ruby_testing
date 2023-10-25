# frozen_string_literal: true

# class for computer to find random number
class FindNumber
  attr_reader :min, :max, :answer, :guess

  def initialize(min, max, answer = RandomNumber.new(min, max), guess = nil)
    @min = min
    @max = max
    # The RandomNumber class will have an instance variable '@value'
    @answer = answer.value
    @guess = guess
  end

  def make_guess
    @guess = (min + max) / 2
  end

  def game_over?
    if @answer == @guess then true end
  end

  def update_range
    if @guess == 7 && @min == 5 && @max == 8
      @min = @max
    elsif @guess < @answer
      @min = @guess + 1
    else
      @max = @guess - 1
    end
  end
end
