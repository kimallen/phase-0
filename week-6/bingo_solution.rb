# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 3.5 hours on this challenge.


# Release 0: Pseudocode
# Outline:
# Input: the "board", which is an array of arrays
# Output: the modified board displayed prettily to the console

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
     #randomly choose from the array [b, i , n, g, o] "letters" as array, column_picked as element called
    # randomly choose a number 1-100 (num_picked)

# Check the called column for the number called.
     # create a method check_pick
    # reminder: board[row][column]  
    # 
    # Iterate through each row.  Within each row, iterate through each item, or column, 
    # and if it matches the position and the number picked, make it into an 'X'.
    
# If the number is in the column, replace with an 'x'
     # use a destructive method to iterate through the items in the column and replace the number called with an "x"

# Display a column to the console
 # return and print the list of items in that column
  # do this by iterating through and PUTS each item in the column
# Display the board to the console (prettily)
    # PUTS the board with line breaks after each row
# Initial Solution

=begin
class BingoBoard

  def initialize(board)
    @bingo_board = board
  end
  
  def pick
    @letters = ['B', 'I', 'N', 'G', 'O']
    @letter_picked = @letters[rand(5)]
    @number_picked = rand(1..100)
    @pick = @letter_picked + @number_picked.to_s
    puts "Your letter-number combo is #{@pick}"
  end
  
  def check_pick
    # p @bingo_board
    @letter_column = @letters.index(@letter_picked) 
    @bingo_board.each do |row|
      row.map! do |coordinate|
        if (row.index(coordinate) == @letter_column) && (coordinate == @number_picked)
          'X'
        else coordinate
        end
      end
    end
  end
  
  def display_column
      puts "The #{@letter_picked} column looks like this:"
      @bingo_board.each {|row| p row[@letter_column]}
  end
  
  def display_altered_board
    puts "The updated pretty board looks like this:"
    @bingo_board.each do|row| puts 
      row.each {|coordinate| print "#{coordinate} "}
    end
  end
end
=end

# Refactored Solution
# The only change is on line 95
class BingoBoard

  def initialize(board)
    @bingo_board = board
  end
  
  def pick
    @letters = ['B', 'I', 'N', 'G', 'O']
    @letter_picked = @letters[rand(5)]
    @number_picked = rand(1..100)
    @pick = @letter_picked + @number_picked.to_s
    puts "Your letter-number combo is #{@pick}"
  end
  
  def check_pick
    @letter_column = @letters.index(@letter_picked) 
    @bingo_board.each do |row|
      row.map! do |coordinate|
        # This is the only refactor below
        ((row.index(coordinate) == @letter_column) && (coordinate == @number_picked)) ? 'X' : coordinate 
      end
    end
  end
  
  def display_column
      puts "The #{@letter_picked} column looks like this:"
      @bingo_board.each {|row| p row[@letter_column]}
  end
  
  def display_altered_board
    puts "The updated pretty board looks like this:"
    @bingo_board.each do|row| puts 
      row.each {|coordinate| print "#{coordinate} "}
    end
  end
end

# DRIVER CODE:
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.pick
new_game.check_pick
new_game.display_column
new_game.display_altered_board


# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
#   It was a little more challenging.  I actually rewrote part of it after I made my solution.  
#   I was going to go about it one way, but it turnede out it didn't work.
# What are the benefits of using a class for this challenge?
# You can play with more than one board, yet use the same class to evaluate and change the board.
# It also allows you to display different parts of the board by applying methods created in the class.
# How can you access coordinates in a nested array?
# iterate through the 1st level array, then within that iteration, iterate through the next array.
# What methods did you use to access and modify the array?
# I used map! and each.  I used map! for both iterations, and then experimented with map!, map, 
# and each to see what was necessary.  To be safe I would use map! all around, though I'm not sure what is proper.
# How did you determine what should be an instance variable versus a local variable?
# Any variable I was going to use in another method in the class I made an instance variable.  
# If I was only using it within a method, I would use a local variable.  I didn't actually use any, but I could have on pick.  
# I just figured I'd make it an instance variable in case I wanted to call it elsewhere for some reason.
# What do you feel is most improved in your refactored solution?
#   My only refactor is to use a ternary operator.  I'm not sure that it actually makes it more readable. 
# I'd love some ideas.  I haven't quite figured out how to work out 
# a refactor.  There may be a way to display it using next_values, but I couldn't figure it out.


#Reflection
