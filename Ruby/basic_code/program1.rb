=begin

Write a Ruby function that takes in a sentence (a string) and 
returns a new sentence where the words are sorted by their length in ascending order.

Example input: "a group of words containing a subject"
Example output: "a a of group words subject containing"

=end

def sort_length(str)
  arr = str.split(" ")               #convert into array
  arr.sort_by!{|word| word.length}   #using block code with sort_by
  return arr.join(" ")               #convert into string
end

input = "a group of words containing a subject"
p sort_length(input)