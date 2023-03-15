# Given two strings s and t, return true if t is an anagram of s, and false otherwise.

def anagram(s,t)
  if s.length != t.length
    return false
  end

  str1 = s.split('').sort
  str2 = t.split('').sort
  for i in 0...s.length
    if str1[i] != str2[i]
      return false
    end
  end

  return true
end

s = "race"
t = "care"
p anagram(s,t)
p anagram("listen","silent")
p anagram("absent","absorb")
p anagram("listen1","silent")