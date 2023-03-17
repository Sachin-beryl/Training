# Given a range of years as a string, 
# return the number of leap years there are within the range (inclusive).

require 'date'
def leap_year(str)
  count = 0
  year = str.split("-")
  start = Date.new(year[0].to_i)
  last = Date.new(year[1].to_i)

  while start <= last
    if start.leap?
      count += 1
      start = start.next_year
    else
      start = start.next_year
    end
  end
  return count
end

p leap_year("2000-2010")
p leap_year("2000-2024")