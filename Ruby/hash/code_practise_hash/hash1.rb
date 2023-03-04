#taking user define key value pair into the hash.

def user_define_input
  print "Enter the key = "
  key = gets.chomp
  print "Enter the value = "
  value = gets.chomp
  my_hash = {}                 #creating hash
  my_hash.store(key,value)     #storing the user key and value into hash. 
  return my_hash
end

puts user_define_input