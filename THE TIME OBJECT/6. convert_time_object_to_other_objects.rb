someday = Time.new(2000, 2, 15)
p someday
p someday.yday
p someday.wday
p someday.mday
puts someday.to_s
puts someday.to_s.class
puts someday.ctime # different type  of output format
puts someday.ctime.class
p someday.to_a
p someday.to_a.class # we get seconds, minutes, hours, date,
# number of year day, number of week in the given month,
#if it falls in daylight saving time and the time zone
