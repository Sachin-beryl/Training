# Declares block code to be called before the program is run.

puts "main code"
BEGIN{                       #due to begin , this code will run first.
  puts "priority code"
}
   
