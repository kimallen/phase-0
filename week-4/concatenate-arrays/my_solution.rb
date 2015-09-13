# Concatenate Two Arrays

# I worked on this challenge by myself.

# Input: two Arrays
# output: one array
# To solve:
# create a method that calls two Arrays
# Add the elements from array2 to array 1 using iteration that can include strings and/or integers
# output a single array with all elements


# Your Solution Below

# def array_concat(array_1, array_2)
# 	new_array = array_1 + array_2
# 	#p new_array
# end

#REFACTORED:

def array_concat(array_1, array_2)
	array_1.concat(array_2)
end


