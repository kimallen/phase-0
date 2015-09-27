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
    Iterate through each row.  Within each row, iterate through each item, or column, 
    and if it matches the position and the number picked, make it into an 'X'.
    
# If the number is in the column, replace with an 'x'
     # use a destructive method to iterate through the items in the column and replace the number called with an "x"

# Display a column to the console
 # return and print the list of items in that column
  # do this by iterating through and PUTS each item in the column
# Display the board to the console (prettily)
    # PUTS the board with line breaks after each row
# Initial Solution

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

# Refactored Solution
# I don't know what else to do.


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
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


#Reflection
