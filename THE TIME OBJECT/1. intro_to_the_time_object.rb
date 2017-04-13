# time in Ruby is used to represent time, as well as, dates
# we have two options to create a time object:
today =  Time.new # Time.now is identical to Time.new if it's used
                  # without any argument
p today
p today.class

# we use this whenever we want  to specify a specific day or time
p Time.new
p Time.new(2015) # we get the 1st of Jan 2015 at midnight
p Time.new(2015, 5) # as the 2nd argument we provide the month
p Time.new(2015, 5,18) # as the 3rd argument we provide the day
p Time.new(2015, 5, 18, 7) # as the 4th argument we provide
                          # the hour
p Time.new(2015, 5, 18, 7,30) # as the 5th argument we provide
                           # the minutes
p Time.new(2015, 5, 18, 7,30, 12) # as the 6th argument we provide
                              # the seconds
