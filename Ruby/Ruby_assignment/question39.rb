# Given two unsorted arrays A of size N and B of size M of distinct elements, 
# the task is to find all pairs from both arrays whose sum is equal to X.

def pair_sum(arr1,arr2,x)
  hash = {}
  for i in 0...arr1.length
    hash[i] = arr1[i]
  end

  hash1 = {}
  for i in 0...arr2.length
    hash1[i] = arr2[i]
  end

  arr = Array.new
  for i in 0...arr1.length
    for j in 0...arr2.length
      if hash[i] + hash1[j] == x
        arr << [hash[i],hash1[j]]
      end
    end
  end

  return arr
end

p pair_sum([-1, -2, 4, -6, 5, 7],[6, 3, 4, 0] ,8)  #[[4, 4], [5, 3]]
p pair_sum([1, 2, 4, 5, 7], [5, 6, 3, 4, 8], 9)    #[[1, 8], [4, 5], [5, 4]]