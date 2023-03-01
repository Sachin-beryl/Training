# require is used to load the modules from the another file(.rb)

require_relative "Module_tool.rb"     #relative is used to find module in same folder

include Module_tool                   # include is used to insert all methods of module in this file 

Module_tool.hlo('ram')       #calling the module method .