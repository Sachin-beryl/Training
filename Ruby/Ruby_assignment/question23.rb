# Given an array nums. We define a running sum of an array as runningSum[i] = sum(nums[0]…nums[i]).
# Return the running sum of nums.

def running_sum(nums)
  arr = Array.new
  for i in 0...nums.length
    sum = 0
    for j in 0..i
      sum += nums[j]
    end
    arr << sum
  end
  return arr
end

p running_sum([1,2,3,4])    #[1, 3, 6, 10]
p running_sum([1,1,1,1,1])  #[1, 2, 3, 4, 5]