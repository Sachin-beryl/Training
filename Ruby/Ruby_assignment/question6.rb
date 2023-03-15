# Given a String S, reverse the string without reversing its individual words. 
# Words are separated by dots.


def rev_str(str)
  return str.split('.').reverse.join(".")
end

str = 'apple.is.red'
p rev_str(str)
p rev_str("The.meaning.of.SENTENCE.is.a.word")