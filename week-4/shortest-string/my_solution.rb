# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
  shortest = list_of_words[0]
  list_of_words.each do |i|
  	if shortest.length <= i.length
  		shortest = shortest
  	else
  		shortest = i
  	end
  end
  p shortest
end

# def largest_integer(list_of_nums)
# 	largest = list_of_nums[0]
#     list_of_nums.each do |x|
#     	if largest >= x
#     	   largest = largest
#     	else
#     	  largest = x
#     	end
# 	end
# 	p largest
# end
# largest_integer ([1, 2, 3])