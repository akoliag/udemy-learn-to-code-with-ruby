# The count method on a string returns the number of occurances of what
# we provide as a substring - an argument which we give to the count method.
puts "Hello world".count("l") # "l" occurs 3 times in this string
puts "Hello world".count("lo") # we get 5 times in here as Ruby counts
# the occurances of "l" and "o" together so we have 3 times "l" and 2 times
# "o" which gives us 5.
puts "An amazing aardvark appeared.".count("Aa")

# Task 1:
# Return the number of total times the search characters are in the string.
# My solution:
def custom_count(string, search_character)
    string.count(search_character)
end
p custom_count("Rebecca", "cca")

# Boris' solution:
def custom_count_1(string, search_character)
    count = 0
    string.each_char {|char| count += 1 if search_character.include?(char)}
    count
end
p custom_count_1("An amazing aardvark appeared.", "amazing")
