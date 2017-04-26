# The scan method is called on a string but takes the argument of the regexp.
# It checks if the content of a string matches the regular expression.
# If finds all occurrences of regular expressions not only the first one and
# returns back to us an array of all of these matches. It is also case-sensitive.

voicemail = "I can be reached at 555-123-4567 or regeman@gmail.com"
p voicemail.scan(/e/)
p voicemail.scan(/e/).length
p voicemail.scan(/re/)
p voicemail.scan(/[re]/) # if we rap the sequence "re" with square brackets
# it means that I want to get back either all occurrences of letter r or all
# occurrences of letter e. It returns all "e" and "r" in one array.
