# Create a function that takes time1 and time2 and return how many hours and 
# minutes have passed between the two times.

require 'time'
def between_time(time1,time2)

  time1 = Time.new(time1).to_i     #to_i is used convert into seconds 
  time2 = Time.new(time2).to_i

  hour = ((time2 - time1)/3600)
  minutes = ((( time2 - time1)/60)-hour*60)

  return "hour = #{hour}, minutes = #{minutes}"

end

p between_time("2023-03-17 15:37:32.823273264 +0530","2023-03-17 15:40:04.256462637 +0530")
