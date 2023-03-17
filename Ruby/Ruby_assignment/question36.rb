=begin

Given a string text, you want to use the characters of text 
to form as many instances of the word "balloon" as possible.
You can use each character in text at most once. 
Return the maximum number of instances that can be formed.
=end

def max_number_of_balloons(text)
  if text.length < 7
    return 0
  end

  hash = Hash.new(0)    #first values should be 0
  text.each_char {|c| hash[c] += 1 }       #increase value count when key found

  arr = Array[hash["b"],hash["a"],hash["l"]/2,hash["o"]/2,hash["n"]]    #if any character not found
  return arr.min                                                        #then balloon is not present
end

p max_number_of_balloons("nlaebolko")
p max_number_of_balloons("loonbalxballpoon")
p max_number_of_balloons("leetcode")