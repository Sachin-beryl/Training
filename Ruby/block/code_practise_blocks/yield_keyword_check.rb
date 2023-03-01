# block invoke

def yield_check
	puts "outside block 1"
  yield
  puts "outside block 2"
  yield							      # invoke block using yield keyword
end

yield_check {puts "block code check using yield statement"}  #block is created using '{}'