# Write a function that takes an integer (less than 1000) and 
# return an array of primes till that number.

def prime(num)
  for j in 2..(num/2)
    if num % j == 0
      return false
    end
  end
  return true    #remove nil values from array
end

def till_number(number)
  if number >= 1000
    return "number greater than or equal to 1000"
  end

  arr = Array.new
  for i in 2...number
    if prime(i) == true
      arr << i
    end
  end
  return arr
end

p till_number(10)  #[2, 3, 5, 7]
p till_number(20)  #[2, 3, 5, 7, 11, 13, 17, 19]


