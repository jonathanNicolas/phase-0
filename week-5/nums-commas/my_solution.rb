# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? a number
# What is the output? (i.e. What should the code return?) a string with appropriate comma's in place
# What are the steps needed to solve the problem?
# #begin
#   split number into an array
#   determing size of array
#   if size is smaller than 4 no comma is needed
#   if size is divisible by four then insert commas every four index within the array.
#   there are two cases to check one where it is array size is %3
#   and the other case where array size is not %3
# end

# 1. Initial Solution
def separate_comma(number)
  a = number.to_s.split('')
  b = a.size/3.0
  if a.size < 4
    p number.to_s
  elsif a.size%3 == 0
    n = -4
    (b.to_i-1).times do |i|
      a.insert(n, ',')
      n -= 4
    end
    p a.join("")
  else
      n = -4
    b.to_i.times do |i|
      a.insert(n, ',')
      n -= 4
    end
  p a.join("")
  end
end


p separate_comma(100000000)

# 2. Refactored Solution

def separate_comma(number)
  number.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse
end



# 3. Reflection
# What was your process for breaking the problem down? What different approaches did you consider? Started with different numbers on papers and looked at the different steps on how I would insert a commas at the appropriate place. The trick was the %3. Checking the length of the array and it modulo is what determines how many times a comma will be placed at intervals of 4 withing the array.
# Was your pseudocode effective in helping you build a successful initial solution? Yes.
# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how? The insert method and join were the methods I were lacking when trying to implement.
# How did you initially iterate through the data structure? I used an array data structure from the start
# Do you feel your refactored solution is more readable than your initial solution? Why? Refractored solution is more elegant but calls on more complex methods especially the .each(3)... It is more elegant but I prefer seeing the logic of the initial solution.