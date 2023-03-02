# Given an integer array, transform it into a mirror array.

def mirror(arr)
	arr += arr.reverse
	arr.delete_at(arr.length/2)
	return arr
end

arr = [2,3,4,5,6]
print(mirror(arr))
puts()