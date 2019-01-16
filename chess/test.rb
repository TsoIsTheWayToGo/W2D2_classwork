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
  
  def move(pos,grid)
    result = []
    MOVE_DIRS.each do |direction|
      continue_counting = true
      # while i.abs && j.abs < grid.length
      i = pos[0]
      k = direction[0]
      f = direction[1]
      j = pos[1] 
      while continue_counting 
        break if grid[i+k] == nil || grid[i+k][f+j]== nil
        
        if grid[i+k][f+j] == "a"#NullPiece.instance
          i += k
          j += f
          result << [i,j]
        else
          continue_counting = false 
        end
      end
    end
    result
  end
  t = Array.new(8) {Array.new(8){"a"}}
  p move([0,0],t)

  