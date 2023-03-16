# Given an unsorted array Arr of size N of positive integers. One number 'A' from set {1, 2, …N} is missing
# and one number 'B' occurs twice in array. Find these two numbers.

def miss_twice(arr)
  p arr.sort!

  #find duplicate
  for i in 0...arr.length
    if arr[i] == arr[i+1]
      a = arr[i]         
      break
    end
  end
  
  #find missing
  for i in 0...arr.length
    if (arr[i+1] - arr[i]) != 1
      b = arr[i]+1            
      break
    end
  end
  return a,b
end

p miss_twice([6,4,3,5,5,1])
p miss_twice([7,6,8,9,10,10,12])