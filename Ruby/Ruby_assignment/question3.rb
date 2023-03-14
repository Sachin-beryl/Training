#Given a string s, reverse only all the vowels in the string and return it.
#The vowels are 'a', 'e', 'i', 'o', and 'u', and they can appear in both cases.

def rev_vowel(str, start, last)
  vowels = %w[a e i o u]     #make array of string which are separated by space
  while start < last
    if vowels.include?(str[start].downcase) && vowels.include?(str[last].downcase)
      temp = str[start]
      str[start] = str[last]
      str[last] = temp
      start += 1
      last -= 1
    elsif vowels.include?(str[start].downcase)
      last -= 1
    elsif vowels.include?(str[last].downcase)
      start += 1
    else
      start += 1
      last -= 1
    end
  end
  return str
end

str = "Apple is Red"
p rev_vowel(str,0,str.length-1)
