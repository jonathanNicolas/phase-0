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




# Refactored Solution


# class CreditCard
# ​
#  attr_reader :card_digits
# ​
#  def initialize(card_digits)
#    @card_digits = card_digits
#    raise ArgumentError.new("Card Number must contain 16 digits!") unless @card_digits.to_s.length == 16
#  end
# ​
#  def check_card
#   digits = ''
#   @card_digits.to_s.split('').reverse.each_with_index do |d, i|
#     digits += d if i%2 == 0
#     digits += (d.to_i*2).to_s if i%2 == 1
#   end
#   digits.split('').inject(0){|sum,d| sum + d.to_i}%10 == 0
#  end
# end
# ​
# jo_card = CreditCard.new(4563960122001999)
# p jo_card.check_card





# Reflection

# What was the most difficult part of this challenge for you and your pair?Understand what the data we were working with when calling methods was our biggest challenge
# What new methods did you find to help you when you refactored?the inject method is so versatile and powerful, that was the key for us.
# What concepts or learnings were you able to solidify in this challenge?working with the inject method made me understand its possibilities it can offer.
