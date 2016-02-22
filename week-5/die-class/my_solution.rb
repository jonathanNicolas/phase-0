# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input:sides
# Output:Random number
# Steps:


# 1. Initial Solution

class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError.new()
    else
      @sides = sides
    end
  end

  def sides
    @sides
  end

  def roll
    @rand = rand(1..@sides)
    return @rand
  end
end



# 3. Refactored Solution







# 4. Reflection
=begin

What is an ArgumentError and why would you use one? ArgumentError is Raised when the arguments are wrong and there isn't a more specific Exception class.
What new Ruby methods did you implement? What challenges and successes did you have in implementing them? The rand method
What is a Ruby class?Classes in Ruby are first-class objec each is an instance of class Class.
Why would you use a Ruby class? A class is used for functionality and when instantiation is require.
What is the difference between a local variable and an instance variable?Local variables are visible only in the method or block they are declared whereas instance variables can been seen by all methods in the class. Local variables are declared inside a method or a block whereas instance variables inside a class but outside a method.
Where can an instance variable be used? Inside a class

=end