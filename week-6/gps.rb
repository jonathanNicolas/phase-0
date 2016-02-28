# Your Names
# 1)
# 2)

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

#defines a method that receives twoarguments
def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
#establishes a Hash it assigns each item a corresponding number of ingredients.
  #error_counter = 3

#iterates through the library to see if any key matches item_to_make
  #library.each do |food|
#if library[food] = nil decrements error_couter by 1
#if library[item_to_make] = nil no decrement is done
  #   if library[food] != library[item_to_make] #library["this is an error"]
  #     p library[food]
  #     error_counter += -1
  #   end
  # end



#if error_counter has not reached 0 then raise 0

  #if error_counter > 0

  unless library.has_key?(item_to_make)
      raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
  #end

#Assign number of ingredients to serving_size
#serving_size = library.values_at(item_to_make)[0]
serving_size = library[item_to_make]
#Assign the remainder to remaining ingredients
  remaining_ingredients = num_of_ingredients % serving_size

  # case remaining_ingredients
  # when 0
  if number_of_ingredients % serving_size == 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  end

      "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"

end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
