# Given an integer limit being the upper limit of the range of interest, implement a function 
# that returns the last 15 palindromes numbers lower or equal to limit as an array sorted ascendingly.


def palindrome(str)           #palindrome method to check number is palindrome or not.
  start = 0
  last = str.length-1
  while start < last
    if str[start] == str[last]
      start += 1
      last -= 1
    else
      return false
    end
  end
  return true
end

def palin_last_15(num)
  arr = Array.new
  arr2 = Array.new
  for i in 0..num
    if palindrome("#{i}")     #if integer is palindrome then add to array "arr"
      arr << i
    end
  end

  arr1 = arr.sort!.reverse    #sort the array in descending order
  for i in 0...15
    arr2 << arr1[i]           #store the last 15 element of array in arr2
  end
  return arr2.sort!
end

p palin_last_15(100)
p palin_last_15(121)