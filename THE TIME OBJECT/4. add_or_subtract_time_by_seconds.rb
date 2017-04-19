start_of_year = Time.new(2016,1,1)
p start_of_year
p start_of_year + 60 # adding 60 seconds

p start_of_year - 180 # subtracting 180 seconds

p start_of_year + (60 *3) # adding 60 seconds by 3 minutes

p start_of_year + (60 *60) # adding 60 seconds by 60 minutes

p start_of_year + (60 *60*24) # adding 60 seconds by 60 minutes by 1 day
p start_of_year + (60 *60*24*45) # adding 60 seconds by 60 minutes
# by 1 day by 45 days
puts
#Task 1
def find_day_of_year_by_number(number)
  current_date = Time.new(2016, 1, 1)
  one_day = 60 * 60 * 24
  until current_date.yday == number
    current_date += one_day
  end
  current_date
end
p find_day_of_year_by_number(150)
p find_day_of_year_by_number(125)
p find_day_of_year_by_number(25)
p find_day_of_year_by_number(365)
