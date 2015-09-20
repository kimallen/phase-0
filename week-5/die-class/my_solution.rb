# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent 1 hours on this challenge.

# 0. Pseudocode

# Input: The number of sides on the die
# Output: A random number within the range between 1 and the number of sides
# Steps:  Create a class called "Die"
# Initialize it with a method that calls the number of sides.
# In this method, Create a conditional that creates an error if a number less than one is entered.
# Create another method that picks a random number within the range between 1 and the the number of sides
# Return the value of the random number


# 1. Initial Solution

class Die
  def initialize(sides)
    if sides<1
    	raise ArgumentError 
    end
    @sides = sides
  end

  def sides
  @sides
  end

  def roll
    rand(@sides)+ 1
  end
end

die = Die.new(32)
die.sides
die.roll
puts "The number if sides is #{die.sides}."
puts "Your roll is #{die.roll}."



# 3. Refactored Solution
What is an ArgumentError and why would you use one?
It is when the value entered for the argument does not work in the situation.  This can be created with the 
conditions chosen by the programmer.  One would use one if there are arguments that are unacceptible in a given situation.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
I used Random (rand)  to generate a random number and had no issues with it.  I did try using the seed method to seed
if I could generate the same number repeatedly, but somehow couldn't get it to work.
What is a Ruby class?
A Ruby class is recognized by a capital letter.  It is something that is constant.  
It allows you to bundle methods under one thing so that you can easily gather information or do prcedures for multiple data.
Why would you use a Ruby class?
I would use it if I wanted to use sets of information and apply the same set of methods to it.
What is the difference between a local variable and an instance variable?
A local variable can only be accessed from within a method where it is defined.  
An instance variable can be used outside of a method inside of the class under which it is being used.  It is designated with an @ preceding the variable name.
Where can an instance variable be used?
It can be used in other methods within a class, but not outside of that class.












# 4. Reflection