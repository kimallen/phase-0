# I worked on this challenge with Marcel (and then office help).


# Your Solution Below

# def valid_triangle?(a, b, c)
#   if a==b && b==c
#     puts "True, an equalateral triangle!"
#     true
#   elsif (a%3==0 || a%4==0 || a%5==0) && (b%3==0 || b%4==0 || b%5==0) && (c%3==0 || c%4==0 || c%5==0)
#     true
#     puts "True!  This is a right triangle!"
#   elsif (a+b > c) && (a+c > b) && (b+c > a)
#     true
#     puts "this is a triangle"
#   else
#     false
#     puts "Sorry, this is not a triangle."
#    end
# end
# def valid_triangle?(a,b,c)
#   return false if [a, b, c].any? { |e| e <= 0 }
#   (a+b > c) && (a+c > b) && (b+c > a)
# end

def valid_triangle?(a,b,c)
  if a*b*c == 0
    false
  elsif (a+b > c) && (a+c > b) && (b+c > a)
  	true
  end
end