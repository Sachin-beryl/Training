
# write sentence in file using syswrite.

afile = File.new("/home/beryl/Music/sample.txt","r+")
if afile
  afile.syswrite("making change in file using the syswrite in file I/O")
else
  puts "unable to open file!"
end