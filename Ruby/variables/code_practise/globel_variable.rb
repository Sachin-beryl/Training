# using global variable in two class

$variable = 50         #global variable

class First
  def print_var
    puts "global variable for first class is #{$variable}"    #global variable accessed in first class
  end
end

class Second
  def print_var
    puts "global variable for Second class is #{$variable}"    #global variable accessed in second class
  end
end

first = First.new
first.print_var         #calling method from first class

second = Second.new
second.print_var        #calling method from second class
