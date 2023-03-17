=begin

If today was Monday, in two days, it would be Wednesday.
Create a function that takes in an array of days as input and the number of days to increment by. 
Return an array of days after n number of days has passed.
after_n_days(["Thursday", "Monday"], 4) ➞ ["Monday", "Friday"]

=end

# def after_n_days(arr,num)
#   for i in 0...arr.length
#     date = 
# end

require 'date'

def after_n_days(days, n)
  days.map do |day|
    future_day = Date.parse(day) + n    #converted into date 2023-03-16 , because if specific date not present then it uses current time
    future_day.strftime("%A")           # "%A" is used to convert into day name.
  end
end


p after_n_days(["Thursday", "Monday"], 4)
