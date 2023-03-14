# Write a function to return reverse of a string using recursion.

def reverse_string(str,start,last)
  if start != str.length/2
    temp = str[start]
    str[start] = str[last]
    str[last] = temp
    return reverse_string(str,start+1,last-1)
  else
    return str
  end
end

str = "ram is shayam"
p reverse_string(str,0,str.length-1)
