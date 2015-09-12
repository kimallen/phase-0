# Factorial

# I worked on this challenge [by myself
# input: a positive number
# output: factorial of that number

# To solve: create a method
# multiply the number by each number below that down to 1
# return the total

# Your Solution Below

def factorial (number)
  total = 1
 (1..number).each {|x| total *= x}
 total
end
