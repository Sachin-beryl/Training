# human phase check using case statement

class Case
  def phase_check
    print "Enter your age = "   #by default take string value as input
    age = gets.to_i            #convert string value to int using to_i

    case age
    when (0..2)
      puts "baby"
    when (3..6)
      puts "little child"
    when (7..12)
      puts "child"
    when (13..18)
      puts "youth"
    else
      puts "adult"
    end
  end
end

obj1 = Case.new
obj1.phase_check