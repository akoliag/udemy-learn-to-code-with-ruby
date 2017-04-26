sales = "I bought 9 apples, 25 bananas and 5 oranges at the store. "

# if we want to remove everything from the string except consonants we need
# to use  this special signs combination [^]
puts sales.scan(/[^aeiouAEIOU, \s\d\.]/)
puts
puts sales.scan(/[^aeiouAEIOU, \s\d\.]/).length
# // sign of regular expression
# [^] excluding
# \s white spaces
# \d digits
# \. period
