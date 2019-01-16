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

  def populate
  #  self[0,0] = Rook.new("Rook","white",[0,0])
   self[[0,0]] = Rook.new("Rook","white",[0,0])
   self[[0,7]] = Rook.new("Rook","white",[0,7])
   self.[]=([0,7], Rook.new("Rook","white",[0,0]))
   self[[7,0]] = Rook.new("Rook","black",[7,0])
   self[[7,7]] = Rook.new("Rook","black",[7,7])
   self[[0,1]] = Knight.new("Knight","white",[0,1])
   self[[0,6]] = Knight.new("Knight","white",[0,6])
   self[[7,1]] = Knight.new("Knight","black",[7,1])
   self[[7,6]] = Knight.new("Knight","black",[7,6])
   self[[0,2]] = Bishop.new("Bishop","white",[0,2])
   self[[0,5]] = Bishop.new("Bishop","white",[0,5])
   self[[7,2]] = Bishop.new("Bishop","black",[7,2])
   self[[7,5]] = Bishop.new("Bishop","black",[7,5])
   self[[0,3]] = Queen.new("Queen","white",[0,3])
   self[[7,3]] = Queen.new("Queen","black",[7,3])
   self[[0,4]] = King.new("King","white",[0,4])
   self[[7,4]] = King.new("King","black",[7,4])
   @grid[1].each_index {|i| self[[1,i]] = Pawn.new("pawn","white",[1,i])}
   @grid[6].each_index {|i| self[[6,i]] = Pawn.new("pawn","black",[6,i])}
  end
   

end

# load "board.rb"
b = Board.new
b.populate