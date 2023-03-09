# use of catch and throw 

exception = catch(:divide) do
  number = rand(2)                  #random number 0 and 1
  throw :divide, 10 if number == 0  #if 0 then print 10
  number 
end

puts exception