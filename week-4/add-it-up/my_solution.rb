

# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with Colin ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!
#Pseudo-code
#input: an array of numbers
#output: sum of the numbers

#Steps to solve the problem.
# Create a method that takes an array of numbers
# Summ all the numbers of the array.
# output the sum.

# 1.  total initial solution

# def total (num)
# 	sum = 0
# 	num.each {|i| sum = (sum + i)}
# 	p sum
# end

# 3. total refactored solution

def total(num)
  num.inject {|sum,x| sum + x}
end



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: An array of strings
# Output: one string as a frammatically correct sentence

# Steps to solve the problem.
 # create a method.
 # Call an array of strings.
 # Add the array elements.
 # Add proper punctuation/ capitalization.
 # Call the sentence.

# # 5. sentence_maker initial solution
# def sentence_maker (array1)
# 	sentence = ''
# 	array1.each {|i| sentence += i.to_s + ' '}
# 	sentence = sentence.capitalize!.chomp(' ') + '.'
# end



# 6. sentence_maker refactored solution

def sentence_maker (array1)
	array1.join(" ").capitalize <<(".")
end

