# using string literals for substitution

class Literal
  @@sum = 5 + 10
  def check
    puts 'That\'s right #{@@sum}'    #single (') quotes take expression as string 
    puts "sum = #{@@sum}"        #substitute Ruby expression into a string using the sequence #{ expr }
  end
end

lit = Literal.new
lit.check