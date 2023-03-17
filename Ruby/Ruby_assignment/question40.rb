# Write a function which takes year and 
# returns how many Saturday 14ths there are in a given year.

require 'date'

def find_sat(year)
  time = Date.new(year,1,14)
  sat_count = 0
  while(time.year < year + 1)
    if time.saturday?
      sat_count += 1
    end
    time = time.next_month
  end
  return sat_count
end
p find_sat(2019) #2
p find_sat(1999) #1
p find_sat(2002) #2