# The 2nd of February 2020 is a palindromic date in both dd/mm/yyyy and mm/dd/yyyy format
# (02/02/2020). Given a date in dd/mm/yyyy format, return true if the date is palindromic in both date
# formats, otherwise return false

require "date"
def format(str)
  date = Date.parse(str)
  first_format = date.strftime("%d/%m/%Y").split("/").join("")
  second_format = date.strftime("%m/%d/%Y").split("/").join("")

  if first_format == first_format.reverse  && second_format == second_format.reverse
    return true
  else
    return false
  end
end
p format("02/02/2020")
p format("03/03/3030")
p format("03/03/3033")