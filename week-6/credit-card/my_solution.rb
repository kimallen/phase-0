# # Class Warfare, Validate a Credit Card Number


# # I worked on this challenge with Nathan Liu.
# # I spent 2 hours on this challenge.

# # Pseudocode

# # Input: Integer with 16 digits
# # Output: true or false as to whether it's a valid credit card
# # Steps:
# Create a class CreditCard
#   Initialize with ArgumentError if it's not 16 digits
#     Store the number into an instance variable
  
#   Perform a check:
#     Convert to string 
#     Split the string
#     Convert the resulting array to integers
#     Double every other digit starting with the second one       from the end
#     Convert to strings
#     Combine into one string
#     Split into individual characters
#     Convert to integers
#     Add all the digits (array elements)
#     Mod 10 of the sum
#   Return true if equal to 0, return false if otherwise



# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard
#   def initialize(number)
#     if number.to_s.length != 16
#       raise ArgumentError.new ("This is not 16 digits.")
#     end
#     @number = number
#   end
  
#   def check_card
#     card_num_str = @number.to_s
#     card_num_array = card_num_str.split("")
#     card_num_array.map! {|digit| digit.to_i }
#     idx = 0
#     while idx < card_num_array.length
#       card_num_array[idx] *= 2
#       idx += 2
#     end
    
#     card_num_array.map! {|num| num.to_s}
#     card_num_str = card_num_array.join("")
#     card_num_array = card_num_str.split("")
#     card_num_array.map! {|num| num.to_i}
#     sum = card_num_array.inject{|sum, b| sum + b }
#     p sum
#     if sum % 10 == 0
#       return true
#     else
#       return false
#     end
#   end
  
# end

# credit_card = CreditCard.new(4408041234567901)
# puts credit_card.check_card

# Refactored Solution
class CreditCard
  def initialize(number)
    if number.to_s.length != 16
      raise ArgumentError.new ("This is not 16 digits.")
    end
    @number = number
  end
  
  def check_card
  	#Turns the credit card number to an array of integers
    card_num_array = @number.to_s.split("").map! {|digit| digit.to_i }   
    #Doubles every even-indexed item in the array.
    card_num_array.each_index {|num_index| card_num_array[num_index] *= 2 if num_index.even?}
    #Converts the new set of numbers to a new array of individual digits (as character strings)
    card_num_array = card_num_array.map! {|num| num.to_s}.join("").split("")
    #Converts to an array of integers and sums all the digits in the array 
    sum = card_num_array.map! {|num| num.to_i}.reduce(:+)
    return true if sum % 10 == 0
    return false
  end
  
end



# Reflection
# What was the most difficult part of this challenge for you and your pair?
# # We got an error when trying to use .inject.  We finally realized that I had used the word "next" as a variable 
# within the block, and next is actually a special word used in iteration so we couldn't use it.
# # What new methods did you find to help you when you refactored?
# We found .reduce, which is like inject but written more simply.  Also .each_index
# # # What concepts or learnings were you able to solidify in this challenge?
# I better understand that when you do an operation like *= or += in an each statement, you are changing the actual value of the item 
# 	because it is being reassigned.  I was thinking that in an each statement, it would just return the original array.  This makes it so you don't have to
# 	 create a new reassignment variable before initiating the each operation.  I also got practice using map!, inject, and reduce.
