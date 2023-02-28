# finding grade according to marks using logical operator

class Grade
  def grade_calculator
    print "Enter your marks = "
    marks = gets.chomp.to_i

    if marks < 35
      puts "sorry you are fail"
    elsif marks >= 35 and marks <= 50
      puts "your grade is D"
    elsif marks > 50 and marks <= 70
      puts "your grade is C"
    elsif marks >70  and marks <= 90
      puts "your grade is B"
    elsif marks >90  and marks <= 100
      puts "your grade is A"
    end
  end
end

gra = Grade.new
gra.grade_calculator

    