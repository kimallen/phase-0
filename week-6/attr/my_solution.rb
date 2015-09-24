#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

=begin
class NameData
  def who_to_greet
  	@name = "Kim"
  end
end


class Greetings
  def initialize
 	@namedata = NameData.new 
  end
  def use_data
	puts "Welcome the the great wide world of DBC, #{@namedata.who_to_greet}!"
  end
end

greetings = Greetings.new
greetings.use_data
=end


# Reflection
# Release 1:
# What are these methods doing?
# They are taking action on the instance of the class Profile and either calling the given values or modifying them.  

# How are they modifying or returning the value of instance variables?
# They are either calling the values given in initialization (ex. age: 27) 
# or giving a chance to change the values given upon initialization by creating a method 
# that takes an argument and then utilizes that argument to modify the instance variable.  
# The new class variable then has the new value.
# They are returning the instance of the class using p so that it both returns the value and prints to the console.

#Release 2:
# What changed between the last release and this release?
# the class Profile defined age as an attribute to be read (setter method).  
# This means that it became unnecessary to create a method to call the age as @age in a separate method.  
# It already has age as a method through attr_reader.
# What was replaced?
# the method what_is_age was replaced.
# Is this code simpler than the last?
# Yes, this is simpler.

# Release 3:
# What changed between the last release and this release?
# age was defined as a writer method (getter) in addition to a reader method.  
# When a new instance of the class Profile was created, age could be used as the method rather than "change_my_age." to create a new value for age.
# What was replaced?
# the method change_my_age
# Is this code simpler than the last?
# Yes

# What is a reader method?
# It allows an object to be read through the object. It defines an instance variable using a symbol that can be used outside of a class.  It is a shorthand way of creating a method like this:
# def something
# 	@something
# end
# it is written like this: attr_reader :something
# What is a writer method? A writer method is like a a reader method but it can be changed, but not read. attr_writer :somethingAA
# What do the attr methods do for you?
# 	They allow you to make your code more readable and allow you to access information through the symbol rather than multiple methods.
# Should you always use an accessor to cover your bases? Why or Why not?
# No because it can make it harder to debug and it can take up more memory.
# What is confusing to you about these methods?
# I get confused about the vocabulary of how to describe them.




