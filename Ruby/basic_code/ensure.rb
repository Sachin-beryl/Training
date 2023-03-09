#ensure statement ensure that at last, the code will execute which is in ensure clause.

begin
  raise 'A test exception.'
rescue Exception => e
  puts e.message
ensure				#at last it will execute .
  puts "Ensuring execution"
end
