# Write a function that, given a date (in the format MM/DD/YYYY), 
# returns the day of the week as a string.
# Each day name must be one of the following strings: "Sunday", "Monday", "Tuesday", "Wednesday",
# "Thursday", "Friday", or "Saturday".
# To illustrate, the day of the week for "12/07/2016 is Wednesday".

def day_format(str)
  time1 = Time.new(str).strftime("%d/%m/%Y")
  day = Time.new(str).strftime("%A")    # "%A" return day of week

  return "#{time1} is #{day}"
end

p day_format("2023-03-17 15:37:32.823273264 +0530")
p day_format("2023-03-16")