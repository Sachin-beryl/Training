# multiple inheritance using the modules, also known as mixins.
# here require is not used because modules are present in same file.

module A
  def a1
    puts "module A method a1"
  end

  def a2
    puts "module A method a2"
  end
end

module B
  def b1
    puts "module B method b1"
  end

  def b2
    puts "module B method b2"
  end
end

class Sample
  include A                 # include is used to insert all methods of module 'A' in this class.
  include B                 # include is used to insert all methods of module 'B' in this class.
  def s1
    puts "class method call."
  end
end
 
samp = Sample.new
samp.a1                    #calling module 'A' method as instance method in class 
samp.a2                    #and use object of class to call the method.(similar with B module)
samp.b1
samp.b2
samp.s1