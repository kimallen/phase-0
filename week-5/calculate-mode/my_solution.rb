# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?
# Input: An array
# Output: An array of the most frequently occuring elements
# To solve: Go through each item and see how many times it appears in the array
# Remember how many times each one appears
# Record the frequency in a key/value pair, frequency as the value
# Put the keys with the maximum value in the new array
# Return the new array

# 1. Initial Solution
def mode(array)
  new_array = []
  words_freq = {}
  max = 0
  array.each do |i|
    if words_freq.include?(i)
      words_freq[i] += 1
    else
      words_freq[i] = 1
    end

    if max < words_freq[i]
      max = words_freq[i]
    end
  end

  words_freq.each do |key, value|
    new_array << key if value == max
  end
  return new_array
end



# 3. Refactored Solution
def mode(array)
  new_array = []
  words_freq = Hash.new(0)
  max = 0
  array.each do |i|
    words_freq[i] += 1
    if max < words_freq[i]
      max = words_freq[i]
    end
  end
  words_freq.each {|key, value| new_array << key if value == max}
  return new_array
end



# 4. Reflection
# Which data structure did you and your pair decide to implement and why?
# We used a hash because the hint said to use one.  Really though, we used one so that we could create a list of 
# the items in the array and count the corresponding number of times it appeared in the array.
# # Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
# Maybe.  I'm not sure tha I got any more specific.  My partner had a really clear handle on how to go about it and 
# vocalized it well.
# # What issues/successes did you run into when translating your pseudocode to code?
# We didn't have any issues because my partner knew what he was doing.
# # What methods did you use to iterate through the content? 
# Did you find any good ones when you were refactoring? Were they difficult to implement?
# To iterate through, we used each with some conditionals inside.  In refactoring, we recreated the hash 
# with a default value of 0 (instead of creating an empty array).  This way we could eliminate the test to see if the array already existed.
# We did not use any new methods inside of it, but I'm curious to know what could be used.

