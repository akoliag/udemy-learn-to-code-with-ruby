# thid method is called on an array but returns the string object; it
#combines all array element together and specifies the delimiter by
# which we want to split this chain of characters.
names = ["Joe", "Moe", "Bob"]
p names.join # no delimiter in here
p names.join("-") # separated by the dash
p ["h", "e", "l", "l", "o"].join

nomi = ["Andrea", "Laura", "Silvia"]

#Task 1:
# Take the array and concatenate its string elements together.
# Return that final string as Joe-Moe-Bob
def custom_join(array, delimiter = "") # we set here a default delimiter
    string = "" #empty string where we will add the elements
    last_index = array.length - 1
    array.each_with_index do |elem, index|
      string << elem #<< delimiter # as without delimiter there will bo no dash
        string << delimiter if index != last_index
    end
    string
end
p custom_join(nomi)
p custom_join(nomi, "-")
p custom_join(nomi, "!--!")
# each_with_index used above allows us to go over every index position and
# remove the last dash occuring after the word "Bob."
