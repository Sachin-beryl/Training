# Given a string S, print all permutations of a given string.

def permu(str)
  arr = str.split('')
  return arr.permutation.map{|element| element.join}
end

str = "abcd"
p permu(str)