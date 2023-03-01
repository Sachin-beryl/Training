# basic shopping invoice using begin and end block

BEGIN{                          # first this block will execute
  puts "**Invoice copy**"
  puts "-----------------"
}

BEGIN{                          # second this block will execute
  cost = 200
  quantity = 15
  tax = 0.11
}

puts "Cost = #{cost}"           # Third main code will execute
puts "Quantity = #{quantity}"
puts "--------------------------"
amount = cost*quantity

END{                            # fifth this block will execute
  puts "**Thanks you for shopping at beryl Systems"
}

END{                              #fourth this block will execute
  tax_amount = amount*tax
    puts "Amount: #{amount}"
    puts "Tax: #{tax_amount}"
    puts "Total Amount: #{amount + tax_amount}"
    puts "-------------------"
}