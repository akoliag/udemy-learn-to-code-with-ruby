# This method removes a part of a string, a character or a character sequence
# from a string.
greeting = "Hello world".delete("l") # removes all "l" letters from a string
p greeting
words = "blah blah blahhhh".delete("lah") # we don't have to put the letters
# we want to remove in order
p words

def custom_delete(string, delete_characters)
  new_string = ""
  string.each_char {|char| new_string << char unless delete_characters.include?(char)}
  new_string
end
p custom_delete("Bravoooooo!", "o!")
