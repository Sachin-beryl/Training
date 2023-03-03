# Write a program to find the number of vowels, consonents, digits and white space characters in a string.
# using regular expression.

def count_number(str)
  space_count = str.count(" ")
  vowel_count = str.count('/aeiou/')
  consonents_count = str.count('/^aeiou0-9/')     #count element which is not equal to vowel and number.
  digit_count = str.count('/0-9/')
  return space_count,vowel_count,consonents_count,digit_count
end

str = "geeks for geeks121"
print(count_number(str))
puts()
  
      

