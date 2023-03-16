# Write a function which takes an integer (positive) and 
# return an array of Fibonacci number of each index in index position till given number.

def Fibonacci(num)
  if num <= 1
    return num
  else
    return Fibonacci(num-1) + Fibonacci(num-2)
  end
end

def store_fib(input)
  arr = Array.new
  for i in 0..input
    arr << Fibonacci(i)
  end
  return arr
end

p store_fib(5)    #[0, 1, 1, 2, 3, 5]
p store_fib(10)   #[0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
    
