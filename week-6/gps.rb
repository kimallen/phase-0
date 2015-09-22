# Your Names
# 1)
# 2)

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

#Create method that calls what item to make and how many
def serving_size_calc(item_to_make, order_quantity)
  #Defining a list of items we can bake
  menu = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  #Checks to see if the item to make is in our library
=begin
  error_counter = 3

  library.each do |food|
    if library[food] != library[item_to_make]
      p error_counter += -1 
    end
  end

  if error_counter > 0
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
=end
  unless menu.has_key?(item_to_make)
    raise ArgumentError.new ("#{item_to_make} is not available")
  end
  #Check to see if there are leftovers
=begin
  serving_size = library.values_at(item_to_make)[0]
  serving_size_mod = order_quantity % serving_size
=end
  serving_size = menu[item_to_make]
  leftovers = order_quantity % serving_size
  
  #Determines what else could be baked to so that there is no waste
=begin
  if leftovers >= 5
    if leftovers % 5 == 0
      suggested_baking_item = "A cake."
    else suggested_baking_item = "A cake and #{leftovers - 5} cookies."
    end
  else suggested_baking_item = "#{leftovers} cookies."
  end
=end
  if leftovers < 5
  suggested_baking_item = "#{leftovers} cookies"
  elsif leftovers == 5 
    suggested_baking_item = "A cake."
  else suggested_baking_item = "A cake and a cookie."
  end
  #Determines how much to make of an item and whether there are leftovers
  if leftovers == 0
    "Calculations complete: Make #{order_quantity/serving_size} #{item_to_make}"
  else
    "Calculations complete: Make #{order_quantity/serving_size} #{item_to_make}, you have #{leftovers} leftover portion(s). Suggested alternative item(s): #{suggested_baking_item}"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("pie", 13)
p serving_size_calc("THIS IS AN ERROR", 5)



#  Reflection
# What did you learn about making code readable by working on this challenge?
# I learned that it is super important, both for going back through and understanding 
# your own code and especially to understand other peoples' code.  The hardest part of 
# the challenge for me was understanding what was trying to be accomplished in the method.
# Did you learn any new methods? What did you learn about them?
# I learned "has_key?" which applies to a hash.  Include? is similar but applies to an array or a string.
# What did you learn about accessing data in hashes? 
# What concepts were solidified when working through this challenge?
