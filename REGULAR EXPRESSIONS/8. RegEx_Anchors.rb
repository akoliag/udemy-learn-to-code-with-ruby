# An anchor is a specific symbol that ties a match to a specific point
# within a string e.g. strictly the beginning or strictly the end of a string.
poem = "99 bottles of beer of the wall, 99 bottles of beer"

# if we want to get only the digits occurring at the begging of a string,
# we use \A:
p  poem.scan(/\A\d+/)
p  poem.scan(/\A\d/)

# \z is used to get sth from the end of a string and we put it at the very end
# of a regular expression
p poem.scan(/eer\z/)
