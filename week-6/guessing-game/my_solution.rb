# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: correct answer, guess
# Output: is guess equal to answer
# Steps:
# create instance of GuessingGame class with answer as argument
# guess is random
# if guess is correct, display correct else low/high
# if guess is correct finish or loop again



# Initial Solution

class GuessingGame
  def initialize(answer)
    # Your initialization code goes here
    @answer = answer
  end

  def answer
    @answer
  end

  def guess(guess)
    @guess = guess
    if @guess > @answer
      return :high
    elsif @guess < @answer
      return :low
    else
      return :correct
    end
  end

  def solved?
    if @guess == @answer
      return true
    else
      return false
    end
  end

  # Make sure you define the other required methods, too
end




# Refactored Solution


class GuessingGame
  def initialize(answer)
    # Your initialization code goes here
    @answer = answer
  end

  attr_reader :answer

  def guess(guess)
    @guess = guess
    if @guess > @answer
      return :high
    elsif @guess < @answer
      return :low
    else
      return :correct
    end
  end

  def solved?
    if @guess == @answer
      return true
    else
      return false
    end
  end

  # Make sure you define the other required methods, too
end




# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?The same as real as real world object instance variables and methods can inherit behavior.
# When should you use instance variables? What do they do for you? Inisde a class
# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with? Control flow is similar to creating different branches for your code to go into.
# Why do you think this code requires you to return symbols? What are the benefits of using symbols? So that they won't be changed during the code.