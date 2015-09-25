# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: an array of strings
# Output: a String in the array, randomly selected
# Steps: Create a Die class that takes an array
# -include in the initialization an ArgumentError if the array that is passed is empty
# -Create a method (sides) that determines how many sides (items in the array) the die has
# -Create a method (roll) that chooses a random string from the array and returns it.

# Initial Solution

class Die
  def initialize(labels)
    if labels.empty?
      raise ArgumentError
    end
    @labels = labels
  end

  def sides
    @sides = @labels.length
  end

  def roll
    # index = rand.(@sides)
    @roll = @labels[rand(@sides)]
  end
end

die = Die.new(['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H'])
die.sides
die.roll
puts "The number of sides is #{die.sides}."
puts "The roll is #{die.roll}."


# Refactored Solution








# Reflection