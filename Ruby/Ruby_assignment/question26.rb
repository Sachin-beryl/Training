=begin

A distinct string is a string that is present only once in an array. 
Given an array of strings arr, and an integer
k, return the kth distinct string present in arr. 
If there are fewer than k distinct strings, return an empty string "".
Note that the strings are considered in the order in which they appear in the array.

=end
 # arr.keep_if{|element| arr.count(element) == 1}
  # return arr[k-1].nil? ? "" : arr[k-1]

def kth_distinct(arr, k)
 
  for i in 0...arr.length
    if arr.count(arr[i]) > 1
      arr.delete(arr[i])
    end
  end
  return arr[k-1].nil? ? "" : arr[k-1]  
end

p kth_distinct(arr = ["d","b","c","b","c","a"], k = 2)   #"a"
p kth_distinct(arr = ["aaa","aa","a"], k = 1)            #"aaa"
p kth_distinct(arr = ["a","b","a","c"], k = 2)           #"c"
