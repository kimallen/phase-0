# I worked on this challenge by myself.
# This challenge took me [2] hours.

# Pseudocode
# input: an integer
# output: true or false based on whether it falls in the fibonacci sequence
# Set inital values for the variables representing the first and second number
# Create a loop to add the last two numbers in a sequence to get the next value in the sequence
# create  way to save the last two values to be used again in the next loop.
# End the loop if the integer is the same as or greater than the last number in the sequence.

# Initial Solution- this uses a formula I found, but does not return the right value for large numbers
=begin
def is_fibonacci?(num)
	num = num.to_f
	if (Math.sqrt((5 * num**2) + 4) == Math.sqrt((5 * num**2) +4).floor) ||
		(Math.sqrt((5 * num**2) - 4) == Math.sqrt((5 * num**2) - 4).floor)
		p true
	else p false
	end

end
=end


# Different tactic Solution:
# def is_fibonacci?(num)
# 	a = 0
# 	b = 1
# 	c = 0
# 	until a >= num || b >= num || c >= num
# 		c = a + b
# 		a = b + c
# 		b = c + a
# 	end
# 	if [a, b, c].include? num
# 	if a == num || b == num || c == num
# 		p true
# 	else p false
# 	end
# end

# is_fibonacci?(144)


# Refactored solution:
def is_fibonacci?(num)
	a = 0
	b = 1
	c = 0
	until a >= num || b >= num || c >= num
		c = a + b
		a = b + c
		b = c + a
	end
	([a, b, c].include? num) ? true : false
end

is_fibonacci?(144)

=begin
What concepts did you review or learn in this challenge?
I have not used until looks much, but it seemed like the right one for this solution.  I wasn't sure if I could string together multiple
|| or what effect that would have.  I also found a shorter way (using include with an array) to check if the number equaled any of them.

What is still confusing to you about Ruby?
I still get cunfused as to whether one more loop happens when the until line is reached.  Same with while.
In general, I get confused as to syntax and how to call different parts of arrays and hashes.  For example, if there's more than one argument,
what does the second do and do I use square brackets or parentheses or curly brackets?  Nested arrays are confusing to me too.

What are you going to study to get more prepared for Phase 1?	
I'm going to study more syntax for arrays and hashes, go back and get help to understand the parts of previous solution I didn't understand.
I will also practice my shortcuts!
	
=end






