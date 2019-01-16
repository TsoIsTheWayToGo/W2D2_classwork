module SteppingPiece 
  MOVE_DIRS = [[1,2],[2,1],[-1,2],[2,-1],[1,-2],[-2,1],[-2,-1],[-1,-2]]
  
  def move(pos,grid)
    result = []
    MOVE_DIRS.each do |direction|
      i = pos[0]
      k = direction[0]
      f = direction[1]
      j = pos[1] 
        if grid[i+k][f+j] == NullPiece.instance
          i += k
          j += f
          result << [i,j]
        end
      
    end
    result
  end

end