=begin
Longest Word

Write a function that finds the longest word in a sentence. If two or more words are found
return the first longest word. 
Characters such as apostrophe, comma, period (and the like) count as part of the word 
(e.g. O'Connor is 8 characters long).

=end

def longest_word(str)
  str = str.split(" ")
  count = 0
  word = ""
  for i in 0...str.length
    if str[i].length > count
      count = str[i].length
      word = str[i]
    end
  end
  return word
end

puts longest_word("Hello darkness my old friend.") #-> darkness
puts longest_word("Hello there mate.") #➞ "Hello"
puts longest_word("Margaret's toy is plastic.") #➞ "Margaret's"
