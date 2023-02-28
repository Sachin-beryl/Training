# using range for printing factorial

class Range1
  def factorial(num)
    fact = 1                #using local variable
    (1..num).each do |n|          
      fact = fact * n
    end
    puts "factorial #{num} of is #{fact}"
  end
end

range = Range1.new
range.factorial(10)      #finding factorial of 10