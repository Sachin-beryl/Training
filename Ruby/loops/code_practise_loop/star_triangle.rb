# print star triangle using nested for loop

def Pattern_print(num)
  n = num
  for i in 0..n         # outer loop
    for j in 0...i      # inner loop
      print "* "
    end
    puts()              # gives new line, after every completion of inner loop
  end
end

print "Enter the number = "
num1 = gets.to_i
Pattern_print(num1)     # call the method with parameter.