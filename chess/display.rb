require 'colorize'
require './cursor'
require './board'
require "byebug"
class Display
  attr_reader :board, :cursor, :cursor_pos

  def initialize()
     @board = Board.new
     @cursor = Cursor.new([0,0], @board)
     @cursor_pos = [0,0]
  end
  
  def build_row
   board.grid.map do |row|
      #row.map do |spot|
    build_col(row)

      #end
  end
  end
   
  def build_col(row)
    row.each {|spot| print "[ ]"}
  end

  def render
    system("clear") 
    # puts "Move the cursor: A-S-W-D"
    # build_row
   board.grid.each_with_index do |row,i|
    print row.each_with_index do |el, j|
        if [i,j] == cursor.cursor_pos
          ":x"
        elsif board.grid[i][j] == NullPiece.instance
           "  "
        else
           board.grid[i][j].symbol
        end
      end
   end
  end
  
end

if __FILE__ == $PROGRAM_NAME
   d = Display.new 
   d.board.populate
   100.times do

   d.render
   d.cursor.get_input
   end
end

