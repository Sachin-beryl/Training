# Given an integer array nums, move all the even integers at the beginning of the array followed by all the
# odd integers. Return any array that satisfies this condition.

def sort_array_by_parity(nums)
  for i in 0...nums.length
    if nums[i] % 2 == 0
      temp = nums[i]
      nums.delete(nums[i])
      nums.unshift(temp)
    end
  end
  return nums
end

p sort_array_by_parity([3,1,2,4])   #[4, 2, 3, 1]
p sort_array_by_parity([0])         #[0]