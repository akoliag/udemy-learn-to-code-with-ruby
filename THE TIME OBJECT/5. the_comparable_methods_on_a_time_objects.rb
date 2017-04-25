birthday = Time.new(2016, 4, 12) #default time is midnight
summer = Time.new(2016, 6, 21)
independence_day = Time.new(2016, 7, 4)
winter = Time.new(2016, 12, 21)

puts birthday > summer
puts birthday == Time.new(2016, 4, 12)
puts independence_day >= winter
puts birthday == Time.new(2016, 4, 12, 1) # different hour
puts birthday != Time.new(2016, 4, 12, 1)

puts independence_day.between?(birthday, winter)
puts independence_day.between?(birthday, summer)
