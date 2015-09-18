# Numbers to Commas Solo Challenge

# I spent [6] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# A positive integer
# # What is the output? (i.e. What should the code return?)
# A string representing the integer with commas appropriately placed
# # What are the steps needed to solve the problem?
# Convert the integer to a string
# Split the string into an array
# Insert a comma after every third string from the right if there is still a string to the left.

# 1. Initial Solution

# def separate_comma(integer)
# 	number = integer.to_s
# 	array = number.split(//)
# 	array.reverse!
# 	commas = 0
# 	ctr = -1
# 	new_array = []
# 	array.each do |x|
# 		ctr += 1
# 		true_ctr = ctr + 1 - commas
# 		new_array[ctr] = x
# 		if true_ctr == array.length
# 			break
# 		end
# 		if true_ctr % 3 == 0 && true_ctr != 0
# 			ctr += 1
# 			new_array[ctr] = ","
# 			commas += 1
# 		end
# 	end
# 	p new_array.reverse!.join
# end		

# 2. Refactored Solution
def separate_comma(integer)
	array =integer.to_s.split(//)
	p array
	ctr = -4
	until ctr < -(array.length)
		array.insert(ctr,",")
		ctr-=4
	end
	p array.join
end

# # 3. Reflection
# What was your process for breaking the problem down? What different approaches did you consider?
# In my first solution, I rewrote the array character by character, adding in a comma if it was in the right position.  In refactoring, I changed strategies such that I inserted commas in the right places (rather than rewriting the array).

# Was your pseudocode effective in helping you build a successful initial solution?
# It was somewhat helpful, but I spent a really long time figuring it out.

# What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?
# I used .insert.  At first I thought it inserted after the given position, but it inserts before.  Yes, this totally changed how my code works.  Rather than having to interate through each character, I was able to insert the commas in the specific areas I asked it to, just iterating the number of commas I needed.

# How did you initially iterate through the data structure?
# Initially I had to create a counter, and then a counter for the commas (since it changed the size of the array and hence the position of the comm and where to put it)

# Do you feel your refactored solution is more readable than your initial solution? Why?
# It is definitely more read-able.  I cut out a lot of lines with the refactored solution.  I debated whether using a reverse before and after adding commas was more readable than counting from the right and using negatives.