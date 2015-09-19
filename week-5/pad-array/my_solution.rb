# Pad an Array

# I worked on this challenge with: David O'Keefe

# I spent 1.5 hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

#Input: An array and a minimum size value and an optional argument
#Output: A new array containing the original array and padding info

#To solve:
#Create a method that accepts three arguments.
#Determine the length of the array
# array.length
#Compare the length with the minumum size.
#>, <, =
#If the length is equal to or greater than the min. size, return a copy of the original array
#If the length is less than the minimum return a new array until the length equals the minumum size.  If an optional argument is accepted, then pad with that argument.
#Return the new array
# Create a second method that returns a new value for the original array (is destructive)

def pad (array, min_size, *optional_padding)
  array_length = array.length
  newarray = []
  array.each {|num| newarray << num}
  until array_length >= min_size
    if optional_padding.length > 0
      newarray << optional_padding
    else
      newarray << nil
    end
    array_length += 1
  end
  newarray.flatten
end

def pad! (array, min_size, *optional_padding)
  array_length = array.length
  until array_length >= min_size
    if optional_padding.length > 0
      array << optional_padding
    else
      array << nil
    end
    array_length += 1
  end
  array
end 

# REFACTORING:
# This is a start to refactoring, though it won't let me run and call it as a method.  I need to timebox so had to quit.
# def pad (array, min_size, *optional_padding)
# array = [1, 2, 3]
# min_size = 5
# optional_padding = "Apple"
#   if array.length < min_size
#     newarray = array << Array.new((min_size-array.length), optional_padding)
#   else
#     newarray = array
#   end
# p newarray.flatten
# # end
# # pad ([1, 2, 3], 5, "Apple")

# # Were you successful in breaking the problem down into small steps?
# # Yes, we seemed to be able to do so.
# # Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# # Writing the pseudocode definitely helped.  We did a general outline and then went back through to add any additional specifics.

# # Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# Some initial errors were that we did not come up with "nil" for the empty spots.  We created a conditional to put in the word "nil."
# I've worked on so much other stuff since that that I can't remember.
# # When you refactored, did you find any existing methods in Ruby to clean up your code?
# Yes, I saw that with the syntax Array.new(x)(y), x designates the length of the array and y fills in a default value for unassigned elements and returns nil if no value is added.
# # We did some refactoring as we went, so were satisfied when we finished as a pair.
# # How readable is your solution? Did you and your pair choose descriptive variable names?
# Ye,s I believe we were descriptive.  I'm sure there is some refactoring that could happen to make it more readable.
# # We did use descriptive names.  It does look like a bit f a mess with multiple conditionals inside of conditioals.
# # What is the difference between destructive and non-destructive methods in your own words?
# Destructive is when the return value replaces the original.  Non-destructive is when the original value(s) are retained and a new value(s) is returned.
