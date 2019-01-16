class Piece

  attr_reader :name

  def initialize(type,color)
    @type = type
    @color = color
    #@start_pos = start_pos
  end

  def to_s
    "#{symbol}"
  end

end

class Knight < Piece
  include SteppingPiece
  
  def initialize(name,color,pos)
    super
    @pos = pos
    @symbol = "♞"
  end

  def move_dirs(pos,grid)
    super(pos,grid)
  end
end


class Rook < Piece 

  def initialize(name,color,pos)
    super
    @pos = pos
    @symbol = "♜"
  end
  
  def move_dirs 
    horizontal_dirs 
  end 
end 

class Bishop < Piece 
  def initialize(name,color,pos)
    super
    @pos = pos
    @symbol = "♝"
  end

  def move_dirs 
    diogonal_dirs 
  end 
end 

class Queen < Piece 
def initialize(name,color,pos)
    super
    @pos = pos
    @symbol = "♕"
  end

  def move_dirs 
    diogonal_dirs + horizontal_dirs
  end 
end 
class King < Piece 
def initialize(name,color,pos)
    super
    @pos = pos
    @symbol = "♔"
  end

  def move_dirs 
    diogonal_dirs + horizontal_dirs
  end 
end 
class Pawn < Piece 
def initialize(name,color,pos)
    super
    @pos = pos
    @symbol = "♔"
  end

  def move_dirs 
    diogonal_dirs + horizontal_dirs
  end 
end 

