#Create a new list:
#Input: a list of grocery items and quantities
#Create a new hash
#Add an item and quantity to the existing list:
#Create a key/value pair and add it to the hash
#Remove an item/quantity by removing a key/value pair
#Update quantities of a list:
#Edit the value in a key/value pair
#Print a formatted list:
#Run a list, format by adding a dash by iterating to add to each key-value pair

def create_list
  grocery_list = Hash.new
end

def add_item(list, item, quantity)
  list[item]= quantity
end

def remove_item(list, item)
  list.delete(item)
end

def change_quant(list, item, quantity)
  list[item]= quantity
end

def list_printer(list)
  list.each { |k,v| puts "~~  #{k}: #{v}" }
end



our_list = create_list
add_item(our_list, "chocolate bar", 3)
p our_list
change_quant(our_list, "chocolate bar", 6)
add_item(our_list, "pretzels", 2)
p our_list
list_printer(our_list)
remove_item(our_list, "chocolate bar")
p our_list

# What did you learn about pseudocode from working on this challenge?
# It does not have to be complicated.  It's also really helpful when pairing 
# so that you know you are on the same page and have the same understanding of 
# how to approach the problem.

# What are the tradeoffs of using Arrays and Hashes for this challenge?
# I'm not sure how one would use arrays for this challenge since there are pairs
#  of info and not just values that would be indexed.  Hashes work well since there are 
#  two variables of information for the pairs.

# What does a method return?
# A method returns whatever the last thing called was in the method.

# What kind of things can you pass into methods as arguments?
# You can pass variables defined outside of the method.  You can pass
#  a variable that represents a method, such as "our_list" in the challenge 
#  above that represents the method create_list.

# How can you pass information between methods?
# To pass information between methods, you can create a variable outside of a 
# method to represent a method. Then when you can call that method inside of
#  another method by using the variable to reference the argument.

# What concepts were solidified in this challenge, and what concepts are still confusing?
# I got more practice in syntax in creating a hash, deleting and adding hash pairs, and how
#  to represent a variable withoin a string.
