# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  break
  end
end


# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#errors.rb
# 2. What is the line number where the error occurs?
#170
# 3. What is the type of error message?
#syntax error,
# 4. What additional information does the interpreter provide about this type of error?
#unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
#error is on line 16 it lacks a way to get out of the while look
# 6. Why did the interpreter give you this error?
#It gave me this error because the while loop was infinite

# --- error -------------------------------------------------------

south_park = "cartoon"

# 1. What is the line number where the error occurs?
#38
# 2. What is the type of error message?
#undefined local variable
# 3. What additional information does the interpreter provide about this type of error?
#or method `south_park' for main:Object (NameError)
# 4. Where is the error in the code?
#lacking assignment
# 5. Why did the interpreter give you this error?
#the variable was not defined

# --- error -------------------------------------------------------

def cartman()
end


# 1. What is the line number where the error occurs?
#53
# 2. What is the type of error message?
# undefined method `cartman'
# 3. What additional information does the interpreter provide about this type of error?
#for main:Object (NoMethodError)
# 4. Where is the error in the code?
#the error in the code is located before carman()
# 5. Why did the interpreter give you this error?
#It was lacking def ... end to define a method

# --- error -------------------------------------------------------

def cartmans_phrase(arg1)
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#70
# 2. What is the type of error message?
#wrong number of arguments (1 for 0)
# 3. What additional information does the interpreter provide about this type of error?
#errors.rb:74:in `<main>'
# 4. Where is the error in the code?
#after cartmans_phrase
# 5. Why did the interpreter give you this error?
#it was lacking the argument for the method

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("hello")

# 1. What is the line number where the error occurs?
#89
# 2. What is the type of error message?
#`cartman_says': wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
#after cartman says
# 5. Why did the interpreter give you this error?
#it was lacking an argument when calling the method cartman_says



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!',"jonathan")

# 1. What is the line number where the error occurs?
#1110
# 2. What is the type of error message?
#`cartmans_lie': wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
#(1 for 2) (ArgumentError)
# 4. Where is the error in the code?
#when calling the method cartmans_lie
# 5. Why did the interpreter give you this error?
#it was lacking an argument when calling the method

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
#129
# 2. What is the type of error message?
#TypeError
# 3. What additional information does the interpreter provide about this type of error?
#String can't be coerced into Fixnum
# 4. Where is the error in the code?
#At the start
# 5. Why did the interpreter give you this error?
#The numbers of times to repeat the string was reversed

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/1


# 1. What is the line number where the error occurs?
#144
# 2. What is the type of error message?
#ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
#in `/': divided by 0
# 4. Where is the error in the code?
#In the division
# 5. Why did the interpreter give you this error?
#You can't devide by 0. Improper franction

# --- error -------------------------------------------------------

require_relative "cartmans_essay.rb"

# 1. What is the line number where the error occurs?
#160
# 2. What is the type of error message?
#LoadError
# 3. What additional information does the interpreter provide about this type of error?
#require_relative': cannot load such file -- /Users/jonathannicolas/phase-0-curriculum/phase-0/cartmans_essay.md
# 4. Where is the error in the code?
#in the file being called
# 5. Why did the interpreter give you this error?
#it was not calling the right rb file


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

#Which error was the most difficult to read?
#they were all about the same
#How did you figure out what the issue with the error was?
#Were you able to determine why each error message happened based on the code?
# When you encounter errors in your future code, what process will you follow to help you debug?
# I will look at the line number, then check the error message. Will then have a look at the additional error message.