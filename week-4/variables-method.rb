puts "What is your first name?"
first_name = gets.chomp
puts "What is your middle name?"
mid_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
puts 'Very nice to meet you, ' + first_name + ' '+mid_name+' '+last_name+'!'

puts 'What is your favorite number?'
num = gets.chomp
better_num = num.to_i + 1
better_num = better_num.to_s

puts 'Don\'t you think that ' + better_num + ' is a better number?'
