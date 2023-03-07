#Write a function that takes two datetime strings in the format "YYYY-MM-DD HH:MM:SS" and 
#returns the difference between them in seconds.

require 'time'

def diff_btw_sec(datetime_str1,datetime_str2)
  first_date = Time.parse(datetime_str1)              #parse the date and time format
  second_date = Time.parse(datetime_str2)

  diff = (second_date - first_date).to_i              #convert difference into integer (in seconds)
  return diff
end

datetime_str1 = "2023-03-07 12:00:00"
datetime_str2 = "2023-03-08 13:30:15"
diff_seconds = diff_btw_sec(datetime_str1, datetime_str2)
puts diff_seconds
