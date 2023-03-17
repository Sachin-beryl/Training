=begin

Given the parameters day, month and year, return whether that date is a valid date.
is_valid_date(35, 2, 2020) ➞ false
# February doesn't have 35 days.

=end
require 'date'
def valid_date(day,month,year)
  begin
    date = Date.new(year,month,day)    # if we create an object of date then date class first check for validation.
    return true                        # if date is valid then object is created.(means true)
  rescue                               # Exception handling is used to handle error if date in invalid
    return false
  end
end

p valid_date(35,2,2020)
p valid_date(17,3,2023)