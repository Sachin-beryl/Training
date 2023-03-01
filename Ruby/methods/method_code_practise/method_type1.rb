# taking variable number of parameters in method

def sample(*a) 
  puts "The length of the variable parameter is #{a.length}"
  for i in 0...a.length
    puts "parameters are #{a[i]}"
  end
end

sample(1,2,3)          # integer type parameters
puts()
sample('ram','ravi')   # string type parameters
puts()
sample(1,'dev',2,'name')   # both integer and string type parameters