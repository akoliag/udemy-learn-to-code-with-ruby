voicemail = "I can be reached at 555-123-4567 or regeman@gmail.com"
p voicemail.scan(/d/) # returns letter "d"
p voicemail.scan(/\d/) #\d means any single digit so it returns all digits
# present in the string
p voicemail.scan(/\d+/) # \d+ returns one or more occurrences in a row so
# chunks of digits together
voicemail.scan(/\d+/) {|digit_match| puts digit_match.length} # with a block
# we get how many digits is in a given row so 3, 3, 4
