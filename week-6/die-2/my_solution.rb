# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:Array of strings
# Output:Die.new: New instance of Die class, Number of sides on the dice, String (random selection from Array)
# Steps:

# Def Die class
#   Def initialize method (Array as argument)
#       if Array is empty
#         then return argument Error
#       Else
#         set Array equal to labels
#       end
#   end

#   Def sides method
#       Set sides equal to length of labels
#       print and return sides
#   end

#   def roll method
#       set roll equal to random number between 1...sides
#       Return corresponding array value index
#   end

# end


# Initial Solution

class Die
  def initialize(labels)
    if labels == []
      raise ArgumentError.new("Wrong number of sides")
    else
      @labels = labels
    end

  end

  def sides
    @sides = @labels.length
    p @sides
  end

  def roll
    random_number = rand(1..@sides)
    @labels[(random_num-1)]
  end

end


die = Die.new(["A", "B","C", "D"])
die.sides
# die.roll
# Refactored Solution



class Die
  def initialize(labels)
    if labels == []
      raise ArgumentError.new("Wrong number of sides")
    else
      @labels = labels
    end

  end

  def sides
    @sides = @labels.length
    p @sides
  end

  def roll
    roll = @labels[rand(@sides)]

  end

end




# # Reflection
# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work? The difference is that that the sides method is not set at initialization.
# What does this exercise teach you about making code that is easily changeable or modifiable? Changing code within the class affects all instances of that class.
# What new methods did you learn when working on this challenge, if any? rand method
# What concepts about classes were you able to solidify in this challenge?
