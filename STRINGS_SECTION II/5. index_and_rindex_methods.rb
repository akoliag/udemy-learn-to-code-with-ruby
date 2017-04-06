# they are called on a string and return the index position of either the first
# or the last occurence of the substring we pass as an argument.
# Nil will be returned if the substring is not found at all within the string.

fact = "Boris is handsome."
p fact.index("I") # returns nil as there is no "I" in the string
p fact.index("B")
p fact.index("ds") # returns the index position of the first character
                   # of the argument - starts counting from the beginning

p fact.index("i") # returns the index position of the first character
                   # of the argument
p fact.index("i", 5) # starts looking for "i" at index position no. 5
                     # and returns the value of first found "i" that
                     # occurs after the index position no. 5

p fact.rindex("s") # rindex method starts looking for an argument
                   # scanning the string from the end

# task 1:
# Return nil if substring not found
# Return the index position of substring if founf in string
def custom_index(string, substring)
    return nil unless string.include?(substring)
    length = substring.length
    string.chars.each_with_index do |char, index|
      sequence = string[index, length]# starts extracting at index and takes
      # as many characters as the called length argument has
        return index if sequence == substring
  end
end
p custom_index("daydreaming", "yd")
