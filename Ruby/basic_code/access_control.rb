#making methods private,protected and try to access them.

class Box
  def initialize(w,h)		# constructor method
    @width, @height = w, h
  end

  def getArea			 # instance method by default it is public.
    getWidth() * getHeight
  end

  def getWidth		# define private accessor methods
    @width
  end
  
  def getHeight		# define private accessor methods
    @height
  end
  
  private :getWidth, :getHeight  # make them private

  def printArea			 # instance method to print area
    @area = getWidth() * getHeight
    puts "Big box area is : #@area"
  end
  
  protected :printArea  # make method protected
end

box = Box.new(10, 20)

a = box.getArea()			# call instance methods
puts "Area of the box is : #{a}"

# box.printArea()	# if we try to call protected methods it will throw error