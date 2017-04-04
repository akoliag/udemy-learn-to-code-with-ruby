#"hello world".each_char #stands for each character
"hello world".each_char {|char| puts char }

name = "Boris"

p name.split("")
letters = name.chars # .chars does exactly the same operation as .split
letters.each {|letter| puts "#{letter} is awsome!"}
# we can call the each method with the letters variable as it's already
# converted to an array as we called before the split method 
