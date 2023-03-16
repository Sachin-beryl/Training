# Given an array of integers nums and an integer target, return indices of the two numbers such that they
# add up to target. You may assume that each input would have exactly one solution, and you may not use
# the same element twice. You can return the answer in any order.

def two_sum(nums, target)
  hash = {}
  nums.each_with_index do |num, index|
    value = target - num
    if hash.key?(value)
      return [hash[value], index]
    end
    hash[num] = index
  end
end

p two_sum([2,7,11,15], 9)
