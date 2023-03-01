# find max and min value from array using for loop

class Calculate
  @@arr = Array[12,24,64,73,23,88,19,20,1]
  @@n = @@arr.length                        #length of the array 
  def max
    maximum = @@arr[0]                      #local variable to store max value from array
    for i in (1...@@n)
      if(maximum < @@arr[i])
        maximum = @@arr[i]
      end
    end
    puts "max value is #{maximum}"
  end
  
  def min
    minimum = @@arr[0]                      #local variable to store min value from array
    for i in (1...@@n)
      if(minimum > @@arr[i])
        minimum = @@arr[i]
      end
    end
    puts "min value is #{minimum}"
  end

end

obj = Calculate.new
puts(obj.max)
puts(obj.min)