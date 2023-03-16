# Given two integer arrays nums1 and nums2, return an array of their intersection. 
# Each element in the result must be unique and you may return the result in any order.


def intersection(nums1, nums2)
  count = {}             #hash to store count of keys as value
  nums1.each do |num|
    count[num] = count[num].to_i + 1
  end
  
  result = []           #store result in array
  nums2.each do |num|
    if count[num].to_i > 0    #if count greater then 0 , then add into result.
      result << num
      count[num] = count[num] - 1  #decrease the count
    end
  end
  
  return result.uniq
end

p intersection([1,2,2,1], [2,2])
p intersection([4,9,5],[9,4,9,8,4])