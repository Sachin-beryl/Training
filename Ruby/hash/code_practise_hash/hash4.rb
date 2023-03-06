=begin

Write a Ruby program that takes an array of numbers as input 
and returns a hash where the keys are the elements of the array 
and the values are the frequency of occurrence of each element in the array.

For example, if the input array is [1, 2, 3, 2, 1, 3, 1], 
the output hash should be {1 => 3, 2 => 2, 3 => 2}.

=end

def key_count(arr)
  hash = {}
  arr.each do |element|
    key = element
    value = arr.count(key)
    hash[key] = value
  end
  return hash
end

p key_count([1, 2, 3, 2, 1, 3, 1])

