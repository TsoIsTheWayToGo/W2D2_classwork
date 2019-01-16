require "./steppingpiece"
require "./slidingpiece"
class Piece

  attr_reader :name

  def initialize(name,color,pos)
    @name = name
    @color = color
    @pos = pos
  end

  def to_s
    "#{symbol}"
  end

end

class Knight < Piece
  include SteppingPiece
  attr_reader :symbol
  
  def initialize(name,color,pos)
    
    @pos = pos
    @symbol = "♞"
  end

  def move_dirs(pos,grid)
   
  end
end


class Rook < Piece 
  include SlidingPiece
  attr_reader :symbol
  def initialize(name,color,pos)
    
    @pos = pos
    @symbol = "♜"
  end
  
  def move_dirs 
    horizontal_dirs 
  end 
end 

class Bishop < Piece 
  include SlidingPiece
  attr_reader :symbol
  def initialize(name,color,pos)
    
    @pos = pos
    @symbol = "♝"
  end

  def move_dirs 
    diogonal_dirs 
  end 
end 

class Queen < Piece 
  include SlidingPiece
  attr_reader :symbol
def initialize(name,color,pos)
    
    @pos = pos
    @symbol = "♕"
  end

  def move_dirs 
    diogonal_dirs + horizontal_dirs
  end 
end 
class King < Piece 
include SlidingPiece
attr_reader :symbol
def initialize(name,color,pos)
    
    @pos = pos
    @symbol = "♔"
  end

  def move_dirs 
    diogonal_dirs + horizontal_dirs
  end 
end 
class Pawn < Piece 
  include SlidingPiece
  attr_reader :symbol
def initialize(name,color,pos)
    
    @pos = []
    @symbol = "♔"
  end

  def move_dirs 
    diogonal_dirs + horizontal_dirs
  end 
end 

