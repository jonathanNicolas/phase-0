# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? Array, Minimum Size, Value
# What is the output? (i.e. What should the code return?)
#Array of the Minimum Size with the empty indexes filled with Value

# What are the steps needed to solve the problem?


# While length of the Array < Minimum Size
#     Then push the value onto the Array

# while conditional [do]
#    code
# end

# while length of the Array < Minimum Size do
#    push the value onto the Array
# end




# 1. Initial Solution


def pad!(array, min_size, value = nil) #destructive
  while array.length < min_size do
    array.push(value)
  end
  array
end

p pad!([1,2,3],5,"Hello")


def pad(array, min_size, value = nil) #non-destructive
  dup_array = array.dup
  while dup_array.length < min_size do
    dup_array.push(value)
  end
  dup_array

end

p pad([1,2],0)

# 3. Refactored Solution

def pad(array, min_size, value = nil) #non-destructive
  pad!(array.dup,min_size,value)
end

p pad([1,2],0)

# 4. Reflection


# Were you successful in breaking the problem down into small steps? Yes
# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have? Yes. The difficulty was in choosing the appropriate control flow knowing that there is more than one valide answer.
# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them? It did not pass the first time because it was not creating a new array, I wasn't aware of the .dup method, I had to look it up on google

# When you refactored, did you find any existing methods in Ruby to clean up your code?Yes I used the bang!
# How readable is your solution? Did you and your pair choose descriptive variable names?Clear looking code
# What is the difference between destructive and non-destructive methods in your own words? destrive will alter the object you are playing with while non destructive wont.


# def pad!(array, min_size, value = nil) #destructive
#   while array.length < min_size do
#     array.push(value)
#   end
#   return array
# end

# p pad!([1,2,3],5,"Hello")


# def pad(array, min_size, value = nil) #non-destructive
#   arrayND = array.dup
#   while arrayND.length < min_size do
#     arrayND.push(value)
#   end
#   return arrayND
# end

# p pad([1,2],0)