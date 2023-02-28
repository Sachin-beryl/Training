# Using constant with the help of unary_operator(::).
# NOTE :- if we don't specify the class then :: will use the global constant by default. 
# A proc is an object that contains a code block. It provides a way to save up a code block and execute it later.

CONST = 'global constant'
class First
  CONST = proc{'in the first class'}  # A Proc object is an encapsulation of a block of code
  def print_const
    ::CONST + ' ADD content'           # Here ::CONST call the global or top most constant.
  end
end

class Second
  CONST = 'in the second class'
  def print_const
    CONST
  end
end

puts First.new.print_const
puts Second.new.print_const
puts Object::CONST + Second::CONST        # Object::CONST point to the top most constant
puts Second::CONST + CONST                # Second::CONST call the second class constant 
puts First::CONST                         # First::CONST call first class constant 
puts First::CONST.call + Second::CONST