# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:Number
# Output:Boolean ( True or False)
# Steps:
#Convert number to string then split into array
#string_array = number.split()
#Iterate through array and convert to integers
#string_array.map!{|string| string_to_i}
#reverse
#using a method or control statement double every other integer
#split again the element with more than one digit
#add them and check divisibility by 10

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard

  attr_reader :card_digits


  def initialize(card_digits)
    @card_digits = card_digits
    raise ArgumentError.new() unless @card_digits.to_s.length == 16
  end

  def check_card
    array_card_digits = card_digits.to_s.split("").reverse
    array_card_digits.map! {|string_number| string_number.to_i}
    doubled_array_card_digits = array_card_digits.map.with_index{|number,index|
        if index % 2 == 0
          number
        else
          number *2
        end
    }
    doubled_array_card_digits = doubled_array_card_digits.join("").split("").map!{|string_number| string_number.to_i}
    p doubled_array_card_digits

    sum = doubled_array_card_digits.inject(0){|sum,x| sum + x}
    p sum
    if sum % 10 == 0
      return true
    else
      return false
    end

  end


end

jo_card = CreditCard.new(4563960122001999)
p jo_card.check_card

# class Person
#   def set_name(string)
#     puts "Setting person's name..."
#     @name = string
#   end

#   def get_name
#     puts "Returning the person's name..."
#     @name
#   end
# end

# joe = Person.new
# joe.set_name("Joe")
# puts joe.get_name


# Refactored Solution








# Reflection

# def sumin(n)
#   1.upto(n).inject(0) { |m, i|  m + i * (2 * (n - i) + 1) }
# end

# p sumin(2)

# # 0 + 1 *(2*(2-1)+1) = 3
# # 3 + 2 *(2*(0)+1) = 5

# def sumax(n)
#   1.upto(n).inject(0) { |m, i|  m + i * (2 * i - 1) }
# end

# p sumax(2)


# # 0 + 1*(2*1 -1) = 1
# # 1 + 2*(2*2 -1) = 7

# self.match(/[\s*]/) ? false : true