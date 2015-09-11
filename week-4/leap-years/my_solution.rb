# I worked on this challenge [by myself, with: Marcel Galang ].


# Your Solution Below

def leap_year?(number)
  if ((number % 4) == 0) && ((number % 100) != 0)
  	puts "This is a leap year."
    true
  elsif ((number % 400) == 0)  
  	puts "This is a leap year."
    true
  elsif ((number % 4) == 0) && ((number % 100) == 0) && ((number % 400) != 0)
    puts "This is not a leap year."
    false
  elsif (number %4) != 0
    puts "This is not a leap year."
    false
  end
end

leap_year?(400)