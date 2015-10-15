# PezDispenser Class from User Stories

# I worked on this challenge [by myself.
# I spent 2 hours on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that
#      represent Pez so it's easy to start with a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser
#      so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.

# Pseudocode:
# Create a class called "Pez_dispenser"
# Input: a list of flavors
# Output: an array of flavors
# Initialize the class by calling for a list of flavors

# Input: the list
# Output: the number of items in the list
# Create a method to count how many Pez remain in the array of flavors

# Input: the list
# Output: first item in the list
# Create a method that returns the first flavor in the list.

# Input: the list
# Output: a new list with the added flavor
# Create a method that allows the user to add to the array.

# Input: the list
# Output: the list of flavors
# Create a method to return the array of flavors.



# class Pez_dispenser

# 	def initialize(flavors)
# 		if flavors.empty?
# 			raise ArgumentError, "No flavors were entered"
# 		end
# 		@flavors = flavors
# 	end
	
# 	def count_pez
# 		@count_pez = @flavors.length
# 	end

# 	def take_pez
# 		@take_pez = @flavors[0]
# 		@flavors = @flavors[1, @count_pez]
# 		puts @take_pez
# 	end

# 	def add_pez(new_flavor)
# 		@add_pez = @flavors.push(new_flavor)
# 	end

# 	def show_pez
# 		puts "These are your flavors:"
# 		@flavors.each {|pez| puts "#{pez} "}
# 	end
# end

# Refactor:
class Pez_dispenser

	def initialize(flavors)
		if flavors.empty?
			raise ArgumentError, "No flavors were entered"
		end
		@flavors = flavors
	end
	
	def count_pez
		@count_pez = @flavors.length
	end

	def take_pez
		puts @flavors.shift(1)
	end

	def add_pez(new_flavor)
		@add_pez = @flavors.push(new_flavor)
	end

	def show_pez
		puts "These are your flavors:"
		@flavors.each {|pez| puts "#{pez} "}
	end
end



# DRIVER CODE:

pez_dispenser = Pez_dispenser.new(['strawberry', 'orange', 'grape', 'cherry', 'lemon'])
p pez_dispenser
p pez_dispenser.count_pez
pez_dispenser.take_pez
p pez_dispenser.add_pez('blueberry')
pez_dispenser.show_pez
p pez_dispenser.count_pez

# Reflection: 
# What concepts did you review in this challenge?
# Using a class, using instance variables, calling variables.
# What is still confusing to you about Ruby?
# I haven't totally figured out when to use attributes.  I used them at first for this challenge, but then I tried commenting them out and it
# worked fine, so apparently I didn't need them.
# What are you going to study to get more prepared for Phase 1?
# Study attributes and when to use them.  Review past challenges and try to understand parts that were vague or that I never understood.




 