phrase = "The Ruby Programming Language is amazing!"

puts phrase.include?"Ruby" # brackets are not required in Ruby when providing
# an argument

# Task 1
# emulate the include method with the customized one
search_for = "Language"
def custom_include? (string, substring)
  len = substring.length
  string.chars.each_with_index do |letter, index|
    return true if string[index, len] == substring
  end
  # we apply the .chars method to convert the string into an array which will
  # allow us to iterate over every element with the each_with_index method
  # as we need to compare the index position as well
  # return true if string[index, len] == substring with |index, len|
  # will iterate over every element starting with 0 index position
  # at the end no return false necessary as the last statement from the
  # method is always returned
end

p custom_include?(phrase, search_for)
