# Create a function that takes the month and year (as integers) and 
# returns the number of days in that month.

require 'date'

def day_in_month(month,year)
  return Date.new(year, month,-1).day    # if we not specify the day it will take 1, -1 is used to show the last day of month.
end

p day_in_month(2,2024)
p day_in_month(2,2023)