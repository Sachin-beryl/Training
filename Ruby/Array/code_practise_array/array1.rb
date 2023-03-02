# Minimum Removals to Make Sum Even in array

def minimum_removal(arr)
  total = arr.sum
  count = 0
  for i in 0...arr.length
    if total % 2 == 0
      return count
    else
      total -= arr[i]
      count += 1
    end
  end
  return count  
end

print (minimum_removal([5, 7, 9, 12,5,3,9,2,1]))
puts()