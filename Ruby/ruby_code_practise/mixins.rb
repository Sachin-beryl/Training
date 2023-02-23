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
 include A
 include B
    def s1
        puts "class method call."
    end
 end
 
 samp = Sample.new
 samp.a1
 samp.a2
 samp.b1
 samp.b2
 samp.s1