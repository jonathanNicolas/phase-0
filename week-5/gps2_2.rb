

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
# Step 1 - set up the method that takes string as an argument
# Step 2 - set up hash
# Step 3 - split up the string list into individual items
# Step 4 - iterate through the array that contains the string items and assign them to the hash
# Step 5 - return list
# output: hash

list = "carrots apples cereal pizza"

def grocery_list_creator(string_of_items)
  grocery_list = Hash.new(0)
  grocery_list_array = string_of_items.split(' ')
  grocery_list_array.each { |item| grocery_list[item] += 1 }
  grocery_list
end

grocery_list_hash = grocery_list_creator(list)

# Method to add an item to a list
# input: item name and optional quantity
# steps:
# Step 1 - set up method that takes 2 arguments, item and quantity
# Step 2 - assign the item and corresponding quantity to the hash
# output: updated hash with item added

def add_item(item_name, quantity, hash_list)
  if hash_list.has_key?(item_name)
    puts "This item is already on the list"
  else
    hash_list[item_name] = quantity
  end
end

add_item("cheese", 2, grocery_list_hash)
print grocery_list_hash
add_item("cheese", 2, grocery_list_hash)
print grocery_list_hash
# Method to remove an item from the list
# input: item you want to remove
# steps:
# Step 1 - set up method that takes 2 argument, item to remove and hash list
# Step 2 - use method to remove item from hash
# output: updated hash with item removed

def remove_item(item_name, hash_list)
  if hash_list.has_key?(item_name)
    hash_list.delete(item_name)
  else
    puts "there is nothing to delete"
  end
end

remove_item("cheese", grocery_list_hash)
print grocery_list_hash
remove_item("cheese", grocery_list_hash)
print grocery_list_hash
# Method to update the quantity of an item
# input: hash_list , quantity, item
# steps:
# output:
# #
def update_quantity(quantity,hash_list,items)
  items.each do |i|
    hash_list[i] += quantity
  end
end

update_quantity(3, grocery_list_hash, ["cereal","pizza"])
print grocery_list_hash
# Method to print a list and make it look pretty
# input: grocery list hash
# steps: iterate through key-value pairs and print each to console
# output: the grocery list hash as a list to the console

def print_list(hash_list)
  hash_list.each {|value,key| puts "#{value}, #{key}"}
end

print_list(grocery_list_hash)


# What did you learn about pseudocode from working on this challenge?Learned the intricacies of passing data usinc Arrays vs Hash.
# What are the tradeoffs of using Arrays and Hashes for this challenge?Arrays: Arrays are used to store collections of data. Each object in an array has a unique key assigned to it. We can access any object in the array using this unique key. The positions in an array starts from " 0 ". The first element is located at " 0 ", the second at 1st position etc.Hashes: Like arrays, Hashes are also used to store data. Hashes points an object to another object. The challenge here was to pass the elements of an array into a hash so that we could have the object point to the number of frequency we had the object appear on the grocery list.
# What does a method return?Ruby methods are very similar to functions in any other programming language. Ruby methods are used to bundle one or more repeatable statements into a single unit. It will return the last variable which was called.
# What kind of things can you pass into methods as arguments? Any object (Strings, numbers, arrays, hashes...)
# How can you pass information between methods?Calling the method assigns that method call to a variable, storing the output of that method in a variable makes it global vs local, you can then pass the variable to other methods within the program.
# What concepts were solidified in this challenge, and what concepts are still confusing?Passing of data between methods was the main focus here.