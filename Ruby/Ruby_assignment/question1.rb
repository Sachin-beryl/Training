# Create a function that takes an array of strings and integers, and 
# filters out the array so that it returns an array of integers only.

def find_integer(arr)
  arr1 = Array.new
  for i in 0...arr.length
    if arr[i].to_s.match(/\d+/)
      arr1 << arr[i]
    end
  end
  return arr1
end

arr = ["A","B",5,"c",7,"Ram",100]
p find_integer(arr)