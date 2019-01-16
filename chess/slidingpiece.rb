module SlidingPiece
  HORIZONTAL_DIRS = [[0,1],
                    [0,-1],
                    [-1,0],
                    [1,0]]
  DIOGONAL_DIRS = [
                  [1,1],
                  [-1,-1],
                  [1,-1],
                  [-1,1]
                  ]
  
  def horizontal_dirs
    HORIZONTAL_DIRS
  end 

  def diogonal_dirs
    DIOGONAL_DIRS
  end 


  def move(pos,grid)
    result = []
    move_dirs.each do |direction|
      while true
        i = pos[0]
        k = direction[0]
        f = direction[1]
        j = pos[1] 
        case grid[i+k][f+j]  
        when "a"#NullPiece.instance
          i += k
          j += f
          result << [i,j]
        else
          break
        end
      end
    end
    result
  end
end


class Rook < Piece 
  def move_dirs 
    horizontal_dirs 
  end 
end 

class Bishop < Piece 
  def move_dirs 
    diogonal_dirs 
  end 
end 

class Queen < Piece 
  def move_dirs 
    diogonal_dirs + horizontal_dirs
  end 
end 