# Given an array of integers nums, return the number of good pairs.
# A pair (i, j) is called good if nums[i] == nums[j] and i < j.

def num_identical_pairs(nums)
  count = 0
  for i in 0...nums.length
    for j in i...nums.length
      if nums[i] == nums[j]  and i < j
        count += 1
      end
    end
  end
  return count
end

p num_identical_pairs([1,2,3,1,1,3])   #4
p num_identical_pairs([1,1,1,1])       #6