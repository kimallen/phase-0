# Count Between

# I worked on this challenge by myself.

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

#PSEUDOCODE:
# Input: A list of integers, an upper bound, and a lower bound
# Output: The number of integers that fall within the bounds of the 2nd and 3rd arguments
# Create a method with three arguments
# Compare each item on the list of integers with the range between (and including) the upper and lower bound
# Count how many of them are in the range

def count_between(list_of_integers, lower_bound, upper_bound)
  count = 0
  list_of_integers.each do |i|
  	if (i >= lower_bound) && (i <= upper_bound)
  	  count+= 1
  	end
  end
  count
end

