# Write a function which takes an array of integers, 
# return how many of them contain an even number of digits.

def even_digit(arr)
  count = 0
  for i in 0...arr.length
    if (arr[i].to_s).length % 2 == 0
      count += 1
    end
  end
  return count
end

p even_digit([12,345,2,6,7896])     #2
p even_digit([555,901,482,1771])    #1