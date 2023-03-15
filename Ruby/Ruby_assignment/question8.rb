=begin

A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and 
removing all non-alphanumeric characters, it reads the same forward and backward. 
Alphanumeric characters include letters and numbers. 
Given a string s, return true if it is a palindrome, or false otherwise

=end

def palindrome(str)
  str1 = str.downcase.split('').delete_if{|char| char =~ /[^0-9a-z]/}
  start = 0
  last = str1.length-1
  while start < last
    if str1[start] == str1[last]
      start += 1
      last -= 1
    else
      return false
    end
  end
  return true
end

p palindrome("LeVEl")
p palindrome("LevEl#45")
p palindrome("aba%$aba")
p palindrome("Mr. Owl ate my metal worm")
p palindrome("")
p palindrome("12321")