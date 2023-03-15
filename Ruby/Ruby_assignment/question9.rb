# Given a string s, find the first non-repeating character in it and return its index. 
# If it does not exist, return - 1.

def non_rep_ind(str)
  str1 = str.split('')
  ind = 0
  while ind != str1.length
    if str.count("#{str1[ind]}") > 1
      ind += 1
    else
      return "character found at index #{ind}"
    end
  end
  return -1
end

p non_rep_ind("ababacab")     #having one non-repeating character.
p non_rep_ind("abacabda")     #having two non-repeating character.
p non_rep_ind("ababab")       #no non-repeating character.
p non_rep_ind("1abcabc")      #one non-repeating number at the start of string.
p non_rep_ind("abcabc9")      #one non-repeating number at the end of string.
