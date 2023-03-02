# Create a function that takes two numbers as arguments (num, length) 
#and returns an array of multiples of num until the array length reaches length.

def array_of_multiples(num,length)
  arr=Array.new(length){ |e| (e+1) * num}
  return arr
end

print(array_of_multiples(7,5))
puts()