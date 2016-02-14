# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input:array
# Output:sum of the numbers in the array
# Steps to solve the problem.


# 1. total initial solution
def total(array)
  length = array.length
  sum = 0
  for i in 0...length
    sum = sum + array[i]
  end
sum
end

p total([1,2,3])

# 3. total refactored solution



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input:
# Output:
# Steps to solve the problem.


# 5. sentence_maker initial solution

def sentence_maker(array)
  length = array.length
  sum = array[0].to_s.capitalize!
  for i in 1...length
    sum = sum + " " + array[i].to_s
  end
sum + "."
end

p sentence_maker(["all", "my", "socks", "are", "dirty"])
# 6. sentence_maker refactored solution
