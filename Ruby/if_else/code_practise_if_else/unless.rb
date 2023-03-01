# use of unless statement

class Unless
  def use_unless
    print "Enter the number = "
    num = gets.to_i
    unless num >= 5              #Executes code if condition is false.
      puts "welcome to code"
    else
      puts "condition matched in unless"
    end
  end
end

obj = Unless.new
obj.use_unless