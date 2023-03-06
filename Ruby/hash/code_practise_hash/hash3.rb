=begin

Write a Ruby program that creates an empty hash and then prompts the user to enter a key-value pair. 
The program should continue prompting the user to enter key-value pairs until the user enters "exit" for the key. 
Once the user enters "exit", the program should output the entire hash.

=end

def continue_prompting
  hash = {}
  loop do
    print "Enter the key (type exit to exit loop) = "
    key = gets.chomp
    break if key == "exit"          #termination condition

    print "Enter the value = "
    value = gets.chomp

    hash[key] = value               #storing values corresponding to key in hash
  end
  return hash
end

p continue_prompting