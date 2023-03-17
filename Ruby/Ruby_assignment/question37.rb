# Given a string s which consists of lowercase or uppercase letters, return the length of the longest
# palindrome that can be built with those letters.Letters are case sensitive, for example, "Aa" is not
# considered a palindrome here.

def longest_palindrome(s)
  sum = 0
  odd_count = 0
  hash = Hash.new(0)    #first values should be 0
  s.each_char {|c| hash[c] += 1 }  

  hash.each do |k,v|                   
    if hash[k].even?  
      sum += hash[k]   
    else
      sum += hash[k]-1     #for test case "ccc"
      odd_count = 1          
    end
  end

  if odd_count == 1
    return sum += 1
  else
    return sum
  end

end

p longest_palindrome("abccccdd")
p longest_palindrome("a")
p longest_palindrome("ccc")