# making calculator using arithmetic operators

class Arithmetic

  def initialize(operator,num1,num2)
    @operator = operator                  #using instance variable
    @num1 = num1
    @num2 = num2
  end

  def calculator
    case @operator
    when '+'
      puts "After addition #{@num1 + @num2}"
    when '-'
      puts "After substraction #{@num1 - @num2}"
    when '*'
      puts "After multiplication #{@num1 * @num2}"
    when '/'
      puts "After division #{@num1 / @num2}"
    when '%'
      puts "After modulus #{@num1 + @num2}"
    when '**'
      puts "After applying power  #{@num1 ** @num2}"
    end
  end
end

arith = Arithmetic.new('**',5,5)         #providing operator and values
arith.calculator                         #calling calculator method