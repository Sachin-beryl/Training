# calling method without making object

class Sample
  def test1
    puts "normal method"
  end

  def Sample.test2        #this method can be called without making any object of class.
    puts "class method"
  end

end

Sample.test2     #call the method without making object of class.
#Sample.test1    #this will through a 'NoMethodError' (have to make object to call this method)
