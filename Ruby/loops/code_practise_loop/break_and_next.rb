# use of break and next in for loop

class Loop
  def next_use
    for i in 0..6
      if i < 4
        next                  # next is use to skip 
      end
      puts "After using next statement #{i}"
    end
  end

  def break_use
    for i in 0..6
      if i > 4
        puts "After using break statement #{i}"
        break;                # use for exit the loop or condition
      end
    end
  end
end

obj = Loop.new
obj.next_use
puts()
obj.break_use