# Smallest Integer

# I worked on this challenge by myself.

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Input: array of integers
# Output: smallest integer in the array

# To solve:
# Create method that calls an array of integers
# evaluate the list of integers to figure out which is the smallest using iteration
# output the solution

# Your Solution Below
def smallest_integer(array)
    smallest = array[0]
    array.each do |x|
    	if smallest <= x
    	   smallest= smallest
    	else
    	  smallest = x
    	end
	end
	p smallest
end

#REFACTORED:

# def smallest_integer(array)
# 	array.sort!
# 	array[0]
	
# end