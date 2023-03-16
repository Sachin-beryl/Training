# Given an array nums containing n distinct numbers in the range [0, n], 
# return the only number in the range that is missing from the array.

def missing_number(arr)
  hash = {}
  arr.each { |num| hash[num] = true }  #make every element of array as key assign true as value
  for i in 0...arr.length
    if !hash[i]   #if hash[i] not return any value then return the index
      return i
    end
  end
  return arr.length   #if no index then return length of array for last value
end

p missing_number([9,6,4,2,3,5,7,0,1])   #8
p missing_number([3,0,1])               #2