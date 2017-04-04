# the split method is called on a string and returns to us an array
sentence = "Hi, my name is Boris. There are spaces here!"
p sentence.split # returns all the string elements separated in an array;
# if we don't provide any argument, the default character splitting
# everything it's going to be a space.
p sentence.split.class

# if we provide an argument with this method, in the brackets we specify
# another custom argument by which we want to split the string:
p sentence.split(".")
p sentence.split("m") #eliminates the "m" letter as it treats it as
# a space
p sentence.split(" i")
words = sentence.split(" ")
words.each {|word| puts word.length}  # now we get the length of every
# word in an array
