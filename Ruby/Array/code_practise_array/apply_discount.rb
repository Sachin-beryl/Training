# Create a function that applies a discount d to every number in the array.

def get_discounts(nums,d)
  dis = d.to_i                       # convert string into integer
  for i in 0...nums.length
    nums[i] = nums[i]*dis/100.0      # 100.0 to handle float values in output
  end
  return nums
end

print(get_discounts([2, 4, 6, 11], "50%"))
puts()