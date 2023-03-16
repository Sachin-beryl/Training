# Given an array nums of size n, return the majority element. 
# The majority element is the element that appears more than ⌊n / 2⌋ times. 
# You may assume that the majority element always exists in the array.

def majority_element(nums)
  for i in 0...nums.length
    if nums.count(nums[i]) > nums.length/2
      return nums[i]
    end
  end
end

p majority_element([3,2,3])         #3
p majority_element([2,2,1,1,1,2,2]) #2