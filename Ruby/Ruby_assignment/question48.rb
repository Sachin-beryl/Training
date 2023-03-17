# Given a date, return how many days date is away from 2023 (end date not included). 
# date will be in mm/dd/yyyy format.

def left_time(str)
  arr = str.split("/")
  year = arr[2]
  month = arr[0]
  day = arr[1]
  time1 = Time.new(year,month,day).to_i    #convert into seconds
  time2 = Time.new(2023,1).to_i            #convert into seconds
  days = ((time2 - time1)/86400)           #convert into days by dividing total seconds in a day.
  return "days left #{days}"
end

p left_time("12/15/2022")