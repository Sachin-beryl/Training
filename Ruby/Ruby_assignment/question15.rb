# Create a function that takes an array of numbers and 
# returns a new array containing only prime numbers.

def prime(arr)
  for i in 0...arr.length
    for j in 2..(arr[i]/2)
      if arr[i] % j == 0
        arr[i] = nil
        break
      end
    end
  end
  return arr.compact     #remove nil values from array
end

p prime([7,3,21,25])
p prime([34,71,91,24,56,77,11,13,27])
