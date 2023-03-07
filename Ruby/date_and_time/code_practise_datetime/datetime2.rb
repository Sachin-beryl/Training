#Write a function that takes a datetime string in the format "YYYY-MM-DD HH:MM:SS" and 
#returns a string that represents the same date and time in the format "Month Day, Year HH:MM:SS".

require 'time'

def format_change(datetime_str)
  time = Time.parse(datetime_str)
  formatted_date = time.strftime('%B %d, %Y')    #format into month day and year
  formatted_time = time.strftime('%H:%M:%s')     #format into hour,minute,second
  output = "#{formatted_date} #{formatted_time}"
  return output
end

p format_change("2023-12-27 12:34:56")