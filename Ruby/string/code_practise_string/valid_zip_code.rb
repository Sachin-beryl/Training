=begin
Zip codes consist of 5 consecutive digits. Given a string, 
write a function to determine whether the input is a valid zip code. 

A valid zip code is as follows:
Must only contain numbers (no non-digits allowed).
Must not contain any spaces.
Must not be greater than 5 digits in length.
=end


def is_valid(zip_code)
  if zip_code.length != 5
    return false
  else
    zip_code.match?(/[0-9]/)   # if regexp matches return true else false
  end
end

puts is_valid("59001")
puts is_valid("853a7") 
puts is_valid("732 32") 
puts is_valid("12345")
