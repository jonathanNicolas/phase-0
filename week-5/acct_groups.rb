
#Pseudocode

#from an array I try to make groups of 5. if that doesn't work i try groups of 4. If after trying groups of four. If that doesn't work I add the last two groups together.


array =["David Hostios","Brian Mosley","Theo Paul","Hanna Taylor","Dan Shapiro","Ryan Wilkins"]




Initial Solution
#p array.each_slice(3) {|x| p x}


def acct_groups(names)
  groups = Array.new
  groups = names.each_slice(5).to_a
  if groups[-1].length == 2 || groups[-1].length == 1
    groups = names.each_slice(4).to_a
  end
  if groups[-1].length == 2 || groups[-1].length == 1
    puts "still bad"
    groups[-1].push(groups[-2])
  end
  p groups

end

acct_groups(array)

# What was the most interesting and most difficult part of this challenge? What to do when grouping by 4 and five doesnt work. What are the possibilities to think of was the challenge.
# Do you feel you are improving in your ability to write pseudocode and break the problem down?Yes
# Was your approach for automating this task a good solution? What could have made it even better?
# What data structure did you decide to store the accountability groups in and why?Array
# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?