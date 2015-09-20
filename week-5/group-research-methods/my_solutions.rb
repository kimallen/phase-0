# # Research Methods

# # I spent [] hours on this challenge.

# i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
# my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# # Person 1's solution
# def my_array_finding_method(source, thing_to_find)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_finding_method(source, thing_to_find)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #

# # Person 2
# def my_array_modification_method!(source, thing_to_modify)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_modification_method!(source, thing_to_modify)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# # Person 3
# def my_array_sorting_method(source)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_sorting_method(source)
#    source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# # Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.delete_if {|item| item.to_s.include?(thing_to_delete)}
end
p my_array_deletion_method!(["cat", "dog", "iguana", "shoe"], "o")

def my_hash_deletion_method!(source, thing_to_delete)
  source.delete_if {|name, age| name.include?(thing_to_delete)}
end

# PERSON 4 REFLECTION:
# Identify and describe the Ruby method you implemented
# Teach your accountability group how to use the methods
# Share any tricks you used to find and decipher the Ruby Docs
# # # I utilized delete_if and include? methods.  delete_if removes the element (if an array) 
# or the key/value pair (if a hash) for whom the condition in a block is true and returns the modified array (or hash).
# # #For example, in English, I'd say delete from this array any item for whom the statemnet in the  block is true.  
# In my solution, each element is being evaluated as to whether it includes the thing to delete.  In the hash, I asked 
# it to evaluate whether the key includes the thing to delete, though I could have asked it to evaluate the value instead.

# Include? evaluates whether a string (in this case) includes the thing to delete (ex. 'a' in 'cat'). 

#   This felt like the most successful time I have been able to utilize Ruby Docs.  First I wrote my pseudocode.  
#   Then I went back through the items in my pseudocode and thought of the methods that could accomplish those things.  
#   Then I went to Ruby Docs and scrolled down the list to see if there was anything that sounded like it could perform that function.  Then I read about each function.



# # Person 5
# def my_array_splitting_method(source)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_splitting_method(source, age)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# # Release 1: Identify and describe the Ruby method you implemented. Teach your
# # accountability group how to use the methods.
# #
# #
# #


# # Release 3: Reflect!
# # What did you learn about researching and explaining your research to others?
# #
# #
# #
# #