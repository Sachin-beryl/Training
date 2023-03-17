# You are given two strings of the same length s and t. In one step you can choose any character of t and
# replace it with another character. Return the minimum number of steps to make t an anagram of s. An
# Anagram of a string is a string that contains the same characters with a different (or the same) ordering.

def min_steps(s, t)
  if s.length != t.length              #length of both string must be equal.
    return -1
  end

  hash = {}
  s.each_char do |c|
    hash[c] = hash[c].nil? ? 1 : hash[c] += 1
  end

  t.each_char do |c|                   # taking char from t string  
    if !hash[c].nil? && hash[c] > 0    # if value of hash[c] not nil and value greater then 0
      hash[c] -= 1                     # then decrease the value count by 1.
    end
  end

  return hash.values.sum
end

p min_steps("bab", "aba")         #1
p min_steps("anagram","mangaar")  #0
p min_steps("abcde","abc")        #length are not equal