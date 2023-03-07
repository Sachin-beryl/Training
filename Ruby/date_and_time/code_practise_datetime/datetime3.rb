=begin

Write a function that takes two datetime strings in the format "YYYY-MM-DD HH:MM:SS" and 
returns the amount of time that has elapsed between 
them in the format "X years, Y months, Z days, A hours, B minutes, C seconds".

=end

require 'date'

def amount_of_time(datetime_str1,datetime_str2)
  time1 = DateTime.parse(datetime_str1)       #making string as datetime object
  time2 = DateTime.parse(datetime_str2)       #making string as datetime object

  diff = time2 - time1
  puts diff

  year = (diff / 365).to_i
  month = ((diff % 365)/30).to_i
  day = ((diff % 365) % 30).to_i
  hour = ((diff * 24) % 24).to_i
  minute = ((diff*24*60)%60).to_i
  second = ((diff*24*60*60)%60).to_i

  return "#{year} years, #{month} months, #{day} days, #{hour} hours, #{minute} minutes, #{second} seconds"

end

datetime_str1 = "2023-03-07 12:00:00"
datetime_str2 = "2025-06-15 20:30:15"
puts amount_of_time(datetime_str1, datetime_str2)