today = Time.now
p today

p today.month # returns the number of the current month
p today.day
p today.year

puts
p today.hour
p today.min
p today.sec

puts

p today.yday # returns the total number of days already covered
# within a given year
p today.wday # returns the day of the week e.g. 5 as Friday
             # it starts at 0 and 0 represents Sunday
