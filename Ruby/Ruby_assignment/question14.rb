# Write a function which takes an integer (positive) and 
# return an array of factorials of each index in index position till given number.

def fact(num)
  arr = Array.new(num+1)
  for i in 0..num
    if i == 0 || i == 1
      arr[i] = 1
    else
      arr[i] = i * arr[i-1]
    end
  end
  return arr
end

p fact(5)
p fact(10)
