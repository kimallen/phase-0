# Build a simple guessing game


# I worked on this challenge by myself.
# I spent [2] hours on this challenge.

# Pseudocode

# Input: An integer
# Output: true if the guess is correct, false if not
# Steps:
# - Create a class called GuessingGame
# -Create a method that initializes it with an integer called "answer"
# -create a method called "GuessingGame#guess that takes an integer called guess.
# -Evaluate whether the guess is larger than the answer (:high), equal to the answer (:correct), or less than the answer (:low)
# 	-if statements; start with false
# -Creatte a method called "GuessingGame#solved?"" that returns true if the value returned was correct and false if not.
# 	-start with a false by default

# Initial Solution
# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#   end

#   def guess (guess)
#   	@guess = guess
#   	if @guess > @answer
#   	  @guess = :high
#   	elsif @guess< @answer
#   	  @guess = :low
#   	else
#   	 @guess = :correct 
#   	end	
#   end

#   def solved?
#   	false
#   # 	if @guess == :correct
#   # 	  true
#   # 	else
#   # 	  false
#   # 	end
#   end
# end

# play = GuessingGame.new(5)
# p play.guess (6)
# p play.guess (4)
# p play.guess (9)
# p play.guess (5)
# p play.solved?




# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess (guess)
  	@guess = guess
  	if @guess > @answer
  	  @guess = :high
  	elsif @guess< @answer
  	  @guess = :low
  	else
  	 @guess = :correct 
  	end	
  end

  def solved?
  	false
   @guess == :correct ? true : false
  end
end

play = GuessingGame.new(5)
p play.guess (6)
p play.guess (4)
p play.guess (9)
p play.guess (5)
p play.solved?



# Reflection
# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# 	If a real object is created and you do something to it, whatever is done to it remains, even if you use that object for something else.  
# 		For example, if I cut an apple in half (action) and then smash it in a press, I'm smashing the cut apple, not the whole apple.
# When should you use instance variables? What do they do for you?
# 	Use instance variables when you want to apply it in other methods within its class.
# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# I had trouble with solved? coming out nil if I made more than one guess.  I still don't understand why it did not stay false in the solved? method if I didn't change it to true.
# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# 	Returning symbols allows you to because they do not change their id, they are immutable.  When you use :correct in the instance method solved?
# 		it is the same object.
