# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#{}"Screw you guys " + "I'm going home." = cartmans_phrase


# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
 	# while true
   # puts "What's there to hate about #{thing}?"
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# 171
# 3. What is the type of error message?
# syntax
# 4. What additional information does the interpreter provide about this type of error?
# unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
# it expected an "end" at the end of the file
# 6. Why did the interpreter give you this error?
# not sure why it wants an end.  Maybe the while statement needs and end as well as the method.

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# 36
# 2. What is the type of error message?
# Name error
# 3. What additional information does the interpreter provide about this type of error?
#undefined local variable or method
# 4. Where is the error in the code?
# in the main Object, south_park
# 5. Why did the interpreter give you this error?
# south_park is not defined

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# 51
# 2. What is the type of error message?
# NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
#  undefined method 'cartman'
# 4. Where is the error in the code?
# at cartman
# 5. Why did the interpreter give you this error?
# cartman is a variable that has not been defined anywhere

# --- error -------------------------------------------------------

# def cartmans_phrase
  # puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# 66
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments
# 4. Where is the error in the code?
# in "cartmans_phrase"
# 5. Why did the interpreter give you this error?
# The command gives and argument, the method does not.

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
  # puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
#  85
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments
# 4. Where is the error in the code?
# line 89, there's no argument given
# 5. Why did the interpreter give you this error?
# the def requires an argument, the command does not



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
  # puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# 106
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments, 1 was given for 2 expected
# 4. Where is the error in the code?
# line 110, needs two arguments
# 5. Why did the interpreter give you this error?
# method ask for 2 arguments, only one is given in the recall of the method

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# 124
# 2. What is the type of error message?
# type error
# 3. What additional information does the interpreter provide about this type of error?
# String can't be coerced into Fixnum
# 4. Where is the error in the code?
# in *
# 5. Why did the interpreter give you this error?
# an integer can't be repeated (multiplied) string times.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# 140
# 2. What is the type of error message?
# ZeroDivision Error
# 3. What additional information does the interpreter provide about this type of error?
# tried to divide something by 0
# 4. Where is the error in the code?
# '/'
# 5. Why did the interpreter give you this error?
# You can't divide something by 0

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 156
# 2. What is the type of error message?
# Load Error
# 3. What additional information does the interpreter provide about this type of error?
# cannot load such a file
# 4. Where is the error in the code?
# "require_relative"
# 5. Why did the interpreter give you this error?
# The file cartmans_essays does not exist


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
# Which error was the most difficult to read?
# They were all about similar.  I am not sure what "from errors.rb '<main>" means for sure.

# How did you figure out what the issue with the error was?
# I looked to the line mentioned, the type of error, and where it was.  Then I used my knowledge of Ruby to figure it out.

# Were you able to determine why each error message happened based on the code? 
# For the most part, yes.  I had some guesses on some, though wasn't totally sure I was right.  They were simple errors, so this made it easier.

# When you encounter errors in your future code, what process will you follow to help you debug?
# I will look where the error occurred, what type of error it was, and use the clues as to where the error occurred.  Then I will try to figureo ut the error.
