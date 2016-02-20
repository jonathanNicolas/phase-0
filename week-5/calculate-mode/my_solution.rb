# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? An array of numbers or string
# What is the output? (i.e. What should the code return?) return array of most frequent values
# What are the steps needed to solve the problem?

# define method (array)
# define a hash that take the values of the arrays as the keys, set them equal to 0
# Update the hash frequency by looping through the array
# Set the conditional statement to output updated array

# 1. Initial Solution
def mode(array)
  freq_hash = Hash.new(0)
  #hash_array = Hash[array.map{|x| [x,0]}]
  array.each do |arg|
    freq_hash[arg] += 1
  end
  freq_hash
  new_array = Array.new

  freq_hash.each do |key,value|
    if value == freq_hash.values.max
      new_array.push(key)
    end
  end
  new_array
end

p mode([1,2,3,3,3,3,4,4,4,4])




# 3. Refactored Solution

def mode(array)
 freq_hash= Hash.new(0)
 array.map {|word| freq_hash[word] += 1}
 freq_hash_values_max = freq_hash.values.max
 freq_hash.select{|key, value| freq_hash[key] if value == freq_hash_values_max}.keys
end

p mode([1,2,3,3,3,3,4,4,4,4])

# 4. Reflection
# Which data structure did you and your pair decide to implement and why? Hash because it was an easy way to map frequencies using each number as a key.

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? It was same, both times was decent, most important is to share our ideas clearly with correct syntax.

# What issues/successes did you run into when translating your pseudocode to code? finding the right control flow to push the max used letter onto a new array.

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement? .each or map were good methods
