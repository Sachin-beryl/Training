# A pangram is a sentence where every letter of the English alphabet appears at least once.
# Given a string sentence containing only lowercase English letters, 
# return true if sentence is a pangram, or false otherwise.

def check_if_pangram(sentence)
  count = Hash.new(0)
  sent1 = sentence.split('')
  sent1.each { |i| count[i] += 0}
  if count.length == 26
    return true
  else
    return false
  end
end

p check_if_pangram("thequickbrownfoxjumpsoverthelazydog")
p check_if_pangram("thisisanapple")