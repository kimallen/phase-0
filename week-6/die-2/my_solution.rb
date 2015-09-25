# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent 3 hours on this challenge.

# Pseudocode

# Input: an array of strings
# Output: a String in the array, randomly selected
# Steps: Create a Die class that takes an array
# -include in the initialization an ArgumentError if the array that is passed is empty
# -Create a method (sides) that determines how many sides (items in the array) the die has
# -Create a method (roll) that chooses a random string from the array and returns it.

# Initial Solution

class Die
  attr_reader :sides
  def initialize(labels)
    if labels.empty?
      raise ArgumentError, "Array is empty"
    end
    @labels = labels
    @sides = @labels.length
  end

  # def sides
  #   @sides = @labels.length
  # end

  def roll
    @roll = @labels[rand(@sides)]
  end
end

die = Die.new(['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H'])
die.sides
die.roll
puts "The number of sides is #{die.sides}."
puts "The roll is #{die.roll}."


# Refactored Solution

# I don't see a way to refactor

# Reflection
# What were the main differences between this die class and the last one you created in terms of implementation? 
# Did you need to change much logic to get this to work?
# They were pretty similar.  I just had to find the number of sides by length of the array.  
# The logic was pretty similar.  I randomized the index call to the array.

# What does this exercise teach you about making code that is easily changeable or modifiable? 
# It’s really helpful so that you can translate it to other programs or modify it easily.  
# It also shows how helpful it is to make code readable.

# What new methods did you learn when working on this challenge, if any?
# I got practice with rand

# What concepts about classes were you able to solidify in this challenge?
#   I better understand initialization and calling variables between methods within a class.  
# Initialization is what runs when the new class is created, so whatever is in there will automatically run.
