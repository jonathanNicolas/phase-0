# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #generate random number 0-4 and use it as index to select a a letter from (b,i,n,g,o)
  #generate rangom number 0-100

# Check the called column for the number called.
  #iterate through each row anc check each column for the number

# If the number is in the column, replace with an 'x'
  #If there is a match replace with X

# Display a column to the console
  #Print letter corresponding to index column

# Display the board to the console (prettily)
  #Print each row

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def Call
    @col_num = rand(0..4)
    bingo_array = ["B", "I", "N", "G", "O"]
    @letter = bingo_array[@col_num]
    @num = rand(100)
    @call = "#{@letter}#{@num}"
  end

  def Check
    @bingo_board.each{|row|
      if row[@col_num] == @num
         row[@col_num] = "X"
      end
    }
  end

  def Display
    @bingo_board.each{|row|
      row.each{|num|
        print "#{num}"
      }
      puts
    }

  end
end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

5.times do
  p new_game.Call
  new_game.Check
  new_game.Display
end



#Reflection
# Does your call method return a letter and a number?yes
# Does your check method replace the number with a string if the number is present?Yes
# Does your check method not replace anything if the number is not present?Yes
# Does the board display to the console correctly? You can check this using your eyes.Yes

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?The outline was there so it was not too bad.
# What are the benefits of using a class for this challenge?The ability to pass instance variables to different methods
# How can you access coordinates in a nested array?Array[index][sub_index]
# What methods did you use to access and modify the array?.each methods
# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?.times to use as a loop.
# How did you determine what should be an instance variable versus a local variable?local variables were used only in my .each methods for iteration purposes
# What do you feel is most improved in your refactored solution?
