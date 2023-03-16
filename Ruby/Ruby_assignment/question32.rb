# Given a string s, return true if s is a good string, or false otherwise. 
# A string s is good if all the characters that appear in s have the same number of occurrences (i.e., the same frequency).

def are_occurrences_equal(s)
  hash = {}
  sent1 = s.split('')
  sent1.each { |i| hash[i] = 0 }    #making count of every character first zero.
  sent1.each { |i| hash[i] += 1}    #increase count when character found.
  if hash.all? { |key, value| value == hash.values[0] }   #chech every value is equal to first key value.
    return true
  else
    return false
  end
end

p are_occurrences_equal("abacbc")  #true
p are_occurrences_equal("aaabb")   #false
