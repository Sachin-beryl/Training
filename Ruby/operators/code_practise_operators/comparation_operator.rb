#comparation operator used in if-else ladder

class Comparation
  def comp
    print "Enter first value : "
    num1 = gets.chomp.to_i              #taking input from user
    print "Enter second value : "
    num2 = gets.chomp.to_i              #taking input from user

    if num1 == num2
      puts "numbers are equal"
      return                            #when condition satisfied return and exit from if-else
    elsif num1 > num2
      puts "numb1 is greater"
      return
    elsif num1 < num2
      puts "numb2 is greater"
      return
    end
  end
end

a = Comparation.new
a.comp