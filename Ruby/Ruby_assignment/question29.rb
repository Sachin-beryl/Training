=begin

Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.
Symbol Value
I       1
V       5
X       10
L       50
C       100
D       500
M       1000
Write a function which takes roman number and return integer corresponding to that roman number.

=end

def roman_to_int(s)
  sum = 0
  hash = {"I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000} 
  arr = s.split('')
  for i in 0...arr.length
    value = hash.fetch(arr[i])
    if i < arr.length - 1 && value < hash.fetch(arr[i+1])   #i must be less than size-1 because it is comparing with next, otherwise nil in output.
      sum -= value
    else
      sum += value
    end
  end
  return sum
end

p roman_to_int("LVIII")     #58
p roman_to_int("MCMXCIV")   #1994