# Given an array of integers nums sorted in non-decreasing order, 
# find the starting and ending position of a given target value.
# If target is not found in the array, return [-1, -1].

def search_range(nums, target)
  if !nums.include? target
    return [-1,-1]
  end

  hash = {}
  for i in 0...nums.length
    hash[i] = nums[i]
  end

  arr = Array.new
  hash.each do |k,v|
    if hash[k] == target
      arr << k
    end
  end

  return [arr[0],arr[arr.length-1]]
end

p search_range([5,7,7,8,8,10],8)
p search_range([5,7,7,8,8,10],6)