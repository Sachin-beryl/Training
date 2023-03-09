#read each character from the file using each_byte(file I/O)

afile = File.new("/home/beryl/Music/sample.txt","r+")
if afile
  afile.each_byte{|ch| putc ch; putc ?.}   # place "." after each character, place is also a character.
else
  puts "unable to open file!"
end

