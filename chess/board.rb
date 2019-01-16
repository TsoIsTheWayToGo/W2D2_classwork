require './piece'
require './null_piece'
class Board 
   attr_reader :grid
   def initialize
    @sentinel = NullPiece.instance
    @grid = Array.new(8) {Array.new(8){@sentinel}}
   end

   def [](pos)
     row,col = pos
     grid[row][col]
   end

   def []=(pos,val)
     row,col = pos
     grid[row][col] = val
   end

   def valid_pos?(pos)
      return false if grid[pos].nil?
      true
   end

   def move_piece(start_pos,end_po)
    self[end_pos], self[start_pos] = self[start_pos], nil
   end

   def add_piece(pos, piece)
   if self[pos].nil?
      self[pos] = piece
    else
      raise "not empty!"
    end
    
   end

   

end

