=begin

Create a function that converts dates from one of five string formats:
"January 9, 2019" (MM D, YYYY)
"Jan 9, 2019" (MM D, YYYY)
"01/09/2019" (MM/DD/YYYY)
"01-09-2019" (MM-DD-YYYY)
"01.09.2019" (MM.DD.YYYY)
The return value will be an array formatted like: [MM, DD, YYYY], where MM, DD, and YYYY are all integers.

=end

#Time.new(YYYY,MM,DD,HH,MM,SS)

require 'date'

def format(str)
  case str
  when /,/        #using regular expression
    date = Date.parse(str)
  when /\//
    date = Date.strptime(str, "%m/%d/%Y")
  when /-/
    date = Date.strptime(str, "%m-%d-%Y")
  else
    date = Date.strptime(str, "%m.%d.%Y")
  end

  return [date.month,date.day,date.year]      
end

p format("01-09-2019")     #[01,09,2019]
p format('01/09/2019')     #[01,09,2019]
p format("January 9, 2019") #[01,09,2019]
