#Method overriding 

class Box			#parent class
  def initialize(w,h)
    @width, @height = w, h
  end
  def getArea
    puts "parent class box area = #{@width * @height}"
  end
end

class BigBox < Box		#child class extending parent class
  def getArea         #overriding the method 
    @area = @width * @height
    puts "child class box area is = #@area"
  end
end

box = BigBox.new(5, 7)	#object of child class.
box.getArea()