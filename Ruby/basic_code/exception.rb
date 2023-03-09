# checking exception while opening a file.

begin
  file = open("/unexistant_file")
  if file
    puts "File opened successfully"
  end
  rescue                      #rescue is used when exception occur.
    puts "file not found"        
end
print file