# Create a function which returns the type of triangle, given the side lengths. 

def get_triangle_type(arr)
  if (arr.length < 3) or (arr.length > 3)
    puts "Not a triangle"
  elsif arr.uniq.count == 2
    puts "isosceles"
  elsif arr.uniq.count == 1
    puts "equilateral"
  else
    puts "scalene"
  end
end

get_triangle_type([4, 4, 4, 3])