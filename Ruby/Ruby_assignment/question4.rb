#Given an n-digit large number in form of string, check whether it is divisible by 7 or not. 
#Print 1 if divisible by 7, otherwise 0.

def divisible(str)
  if str.to_i % 7 == 0
    return 1
  else
    return 0
  end
end

str1 = "24"
str2 = "7"
str3 = "5590712157625"
p divisible(str1)
p divisible(str2)
p divisible(str3)