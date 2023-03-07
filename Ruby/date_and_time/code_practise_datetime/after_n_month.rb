=begin
After N Months...
Create a function that takes in year and month as input, 
then return what year it would be after n-months have elapsed in string form.

Examples
after_n_months(2020, 24) ➞ 2022
after_n_months(1832, 2) ➞ 1832
after_n_months(1444, 60) ➞ 1449

=end

require 'date'

def after_n_months(year_input,month)
  year = Date.new(year_input)          #converting integer input in date format
  year_count = month/12                #month into year
  return year.next_year(year_count).strftime('%Y').to_s    #formated to year and converted to string.
end

p after_n_months(2020, 24) 
p after_n_months(1832, 2) 
p after_n_months(1444, 60) 