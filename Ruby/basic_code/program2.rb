=begin

Write a Ruby function that takes in a sorted array of integers and a target value, and 
returns the index of the target value in the array. 
If the target value is not in the array, 
the function should return the index where the target value should be inserted to maintain the sorted order.

Example input: [1, 3, 5, 7, 9], 4
Example output: 2 (since 4 should be inserted at index 2 to maintain the sorted order)

=end

def find_index(arr,n)
  if found = arr.index{|a| a == n}
    return "element found at index #{found}"
  end

  for i in 0...arr.length
    if arr[i] < n
      ind = i
    end
  end

  if ind
    return "#{ind+1} (since #{n} should be inserted at index #{ind+1} to maintain the sorted order)"
  end
end

arr = [1, 3, 5, 7, 9]
num = 4

p find_index(arr,num)
p find_index([10,20,30,40],20)
p find_index([1,9,21,35,81,97],77)
