=begin
Given a string, reverse all the words which have odd length. The even length words are not changed.

Examples
reverse_odd("Bananas") ➞ "sananaB"
reverse_odd("One two three four") ➞ "enO owt eerht four"
reverse_odd("Make sure uoy only esrever sdrow of ddo length")
➞ "Make sure you only reverse words of odd length"
=end

def reverse_odd(str)
  str = str.split(" ")            #split the words in the spring 
  for i in 0...str.length
    if str[i].length % 2 != 0
      str[i] = str[i].reverse
    end
  end
  return str.join(" ")     #convert to string separated by " "
end

puts (reverse_odd("One two three four"))
puts (reverse_odd("Bananas"))
puts (reverse_odd("Make sure uoy only esrever sdrow of ddo length"))