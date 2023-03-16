=begin

Write a function which takes square matrix mat, return the sum of the matrix diagonals.
Only include the sum of all the elements on the primary diagonal and all the elements on the secondary
diagonal that are not part of the primary diagonal.

=end

def diagonal_sum(mat)
  arr = Array.new
  for i in 0...mat[0].length
    for j in 0...mat[0].length
      if i == j
        arr << mat[i][j]
      end

      if i + j == mat[0].length-1  && i != j
        arr << mat[i][j]
      end
    end
  end

  return arr.sum
end

p diagonal_sum([[1,1,1,1],    #8
  [1,1,1,1],
  [1,1,1,1],
  [1,1,1,1]])

p diagonal_sum([[1,2,3],      #25
  [4,5,6],
  [7,8,9]])