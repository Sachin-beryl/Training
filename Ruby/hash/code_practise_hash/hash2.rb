=begin
Write a program that counts the number of occurrences of each word in a sentence 
and stores the word count in a hash.

Example input: "the quick brown fox jumps over the lazy dog"
Expected output: {"the"=>2, "quick"=>1, "brown"=>1, "fox"=>1, "jumps"=>1, "over"=>1, "lazy"=>1, "dog"=>1}
=end

def word_count
  print "Enter the sentence = "
  sentence = gets.chomp
  words = sentence.split(" ")
  hash = {}
  for i in 0...words.length
    if hash.has_key?(words[i])
      hash[words[i]] += 1
    else
      hash[words[i]] = 1
    end
  end
  return hash
end

p word_count
