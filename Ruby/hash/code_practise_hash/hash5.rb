=begin
Write a Ruby program that takes an array of words as input and 
returns a hash where the keys are the first letters of each word and 
the values are arrays of words that begin with that letter. 
The words in each array should be sorted alphabetically.

For example, if the input array is ["apple", "banana", "cherry", "date", "elderberry", "fig", "grape"], 
the output hash should be {"a" => ["apple"], "b" => ["banana"], "c" => ["cherry"], "d" => ["date"], "e" => ["elderberry"], "f" => ["fig"], "g" => ["grape"]}.

=end

def array_hash(arr)
  hash = {}
  arr.each do |word|

    first_char = word[0]            #storing first alphabet of word
    if(hash[first_char])
      hash[first_char] << word      #appending words starting with the same char in the array. 
    else
      hash[first_char] = [word]     #giving values as array in hash respectively to alphabet.(imp)
    end

  end

  hash.each do |key,value|
    hash[key] = value.sort         # sort by values in array
  end

  return hash
end

p array_hash(["apple", "banana", "cherry", "date", "elderberry", "fig", "grape","apply"])
