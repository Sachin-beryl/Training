# provide comment according to the number

print "Enter the number = "
x = gets.to_i                   # taking value from user

if x > 2
  puts "number is greater than 2"
elsif x <= 2 and x > 0
  puts "number is 1"
else
  puts "invalid number or negative number"
end