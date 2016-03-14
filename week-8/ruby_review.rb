# OO Basics: Student


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode

# 5 Student Objects
# INSERT each Student Object into a students Array
#   Each Object is assigned a first_name and 5 test scores
# CALCULATE average scores
# OUTPUT grade

# Initial Solution

class Student
  attr_accessor :scores, :first_name

  def initialize(first_name, scores)   #Use named arguments!
    @first_name = first_name
    @scores = Array.new(scores)
  end

  def average
    num = @scores.length
    @average = (@scores.inject(0){|sum, x| sum + x})/num
  end

  def letter_grade
    if @average >= 90
      "A"
    elsif @average >= 80
      "B"
    elsif @average >= 70
      "C"
    elsif @average >= 60
      "D"
    else
      "F"
    end
  end

end

student_1 = Student.new("Alex", [100, 100, 100, 0, 100])
student_2 = Student.new("Pierre", [50, 60, 70, 80, 100])
student_3 = Student.new("Prisot", [10, 20, 100, 30, 40])
student_4 = Student.new("Simon", [20, 30, 20, 60, 10])
student_5 = Student.new("Merieux", [40, 20, 50, 60, 70])

students = [student_1, student_2, student_3, student_4, student_5]

#p students[0]
p students[0].first_name
p students[0].scores.length


def linear_search(array, first_name)
    array.each_with_index {|object, index|
          if object.first_name = first_name
              position = index
          else
              position = -1
          end
        }

end




# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Additional Tests 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1





# Reflection
# What concepts did you review or learn in this challenge? Refreshed working with ruby classes,use of accessor . Creating new instanced of the class student and adding methods to it.
# What is still confusing to you about Ruby?
# What are you going to study to get more prepared for Phase 1? Higher order functions like the .each_with_index