# Given the month and year as numbers, return whether that month contains a Friday 13th.

require 'date'

def find_fri(year,month)
  time = Date.new(year,month,13)
  if time.friday?
    return true
  else
    return false
  end
end

p find_fri(2023,1)
p find_fri(2023,10)