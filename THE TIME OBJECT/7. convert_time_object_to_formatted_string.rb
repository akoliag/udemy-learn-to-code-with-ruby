# String from time (strftime) allows us to customize the format of a String
# converted from the time object
# https://apidock.com/ruby/DateTime/strftime

# %b Abbreviated month name ("Jan")
# %B Full month name ("January")
# %d Day of the moth (1..31)
# %j Day of the year (1..366); so called "Julian date"
# %m month as a number (1..12)
# %w day of the week as a number (0..6)
# %x preferred representation for date (no time)
# %y two-digit year (no century)
# %Y four-digit year

today =Time.new
p today.strftime("%B %d, %Y")
p today.strftime("%B %d")
p today.strftime("%B %d, %y")
p today.strftime("%y----%B----%d")
