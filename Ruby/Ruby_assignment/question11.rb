=begin

You are given an array of strings nums and an
integer k. Each string in nums represents an integer without leading zeros.
Return the string that represents the kth largest integer in nums.
Note: Duplicate numbers should be counted distinctly. For example, if nums is ["1","2","2"], "2" is the first
largest integer, "2" is the second-largest integer, and "1" is the third-largest integer.

=end

def kth_largest_number(nums, k)
  arr = nums.map{|element| element.to_i} # convert strings to integers
  sorted_nums = arr.sort.reverse # sort in descending order
  return sorted_nums[k - 1].to_s # return kth element as string
end


p kth_largest_number(["3","6","7","10"], 4)
p kth_largest_number(["2","21","12","1"], 3)
p kth_largest_number(["0","0"],2)