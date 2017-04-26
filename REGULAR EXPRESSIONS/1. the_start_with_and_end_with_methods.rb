=begin

Regular expressions, in a nutshell, mean using symbols to tell Ruby how to
extract certain substrings from a larger string.

=end

phrase = "The Ruby Programming Language is amazing!"
substr = "The"
substr_1 = "zing!"
puts phrase.start_with?("The") # checking if the phrase starts
# with the word "The" and it is case-sensitive.
puts phrase.start_with?("The ")
puts phrase.start_with?("Ruby")
puts phrase.downcase.start_with?("Ruby")

puts phrase.end_with?("zing!")
puts phrase.end_with?("zing") # without an exclamation point we get false


# Task 1
# Return true if a substring is found at the beginning of string; false otherwise
def custom_start_with?(string, substring)
  string[0, substring.length] == substring # extracting a string
    # with the index position 0 with all the characters it has
    # if string[0, substring.length] == substring  ? true : false - but
    # we don't have to include the ternary operator in here as we're going
    # to get true or false anyway as we have == in here
end

puts custom_start_with?(phrase, substr)
# Task 2
# Return true if a substring is found at the end of string; false otherwise
def custom_end_with?(string, substring)
  string[-substring.length..-1] == substring
  # taking everything from the negative whatever (all the characters the last
  # word has up to the last character)
end
puts custom_end_with?(phrase, substr_1)
