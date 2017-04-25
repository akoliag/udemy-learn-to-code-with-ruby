# the way of telling Ruby how to interpret time properly, to do this
# we need to put additional line: reguire 'time'

require 'time' # this allows us to use parse and strptime methods,
# without this line we'll get an error
# strptime = string parse time
puts Time.parse("2016-01-01") #converting the argument to the time object
puts Time.parse("2016-01-01").class
#  puts Time.parse("03-04-2000")
puts Time.strptime("03-04-2000", "%d-%m-%Y")
# by the second argument we tell Ruby how to read/convert the first argument
