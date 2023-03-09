#retry statement in exception handling.

begin
  file = open("somefile")
  if file
    puts "file opened successfully"
  end
  rescue
    puts "retry use"
    retry
end

print file
