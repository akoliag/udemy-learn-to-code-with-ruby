paragraph = "This is my essay. I deserve an A. I rank it a 5 out of 5."
p paragraph.scan(/./) # we get any single character at all
p paragraph.scan(/\./) # if we want to get . we put /\./
p paragraph.scan(/\d/) # any digit
p paragraph.scan(/\D/) # any NON-digit
p paragraph.scan(/\s/) # any white-space character
p paragraph.scan(/\s+/) # any or more extraspaces
p paragraph.scan(/\S/) # any non-white-space character so any valid character
