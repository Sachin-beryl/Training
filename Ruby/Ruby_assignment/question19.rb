=begin

Given an integer array nums, find a contiguous non-empty subarray within the array that has the largest
product, and return the product. Elements can also be negative numbers.
Input: nums = [2,3,-2,4]
Output: 6
Explanation: [2,3] has the largest product 6.

=end

def max_product(nums)
  max = 0
  product = 1
  for i in 0...nums.length
    product *= nums[i]
    max = [max,product].max.to_i
    if(nums[i]==0)
      product = 1
    end
  end

  nums.reverse!
  product = 1
  for i in 0...nums.length
    product *= nums[i]
    max = [max,product].max.to_i
    if(nums[i]==0)
      product = 1
    end
  end

  return max
end

p max_product([2,3,-2,4])     #6
