#read first 50 character of file using sysread (file I/O).

aFile = File.new("test3.rb", "r")   #read file
if aFile
  content = aFile.sysread(50)       #read first 50 char of file
  puts content
else
  puts "Unable to open file!"
end