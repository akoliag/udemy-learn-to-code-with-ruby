# The squeeze method removes any characters that occur more that once in a row
# in a string.

sentence = "Thhe aardvarkk jummped ovver     the fence!"
puts sentence.squeeze # removes all duplicated characters and spaces
# from a string
# if we pass an argument with this method, it is a character or characters
# that we want to focus on and include.

sentence_1 = "III maddee this mistakess on purpose!"
puts sentence_1.squeeze("Ides") # we can pass one character as an argument
# or a sequence of characters that we want to remove

sentence_2 = "LLet's check   the custom_squeeze metthod!"

def custom_squeeze(string)
    final = "" # will store in here the final string output
    chars = string.split("") # we change a string into an array
    chars.each_with_index do |char, index|
      char == chars[index + 1] ? next : final << char
      # so we increase the index by one to compare
        #variable char with another character
        # next moves on to the next one
    end
    final
end
p custom_squeeze(sentence_2)
