puts "Ruby".reverse

#reverse method reverses the order of the characters
#in a string
puts "123".reverse
puts "123".reverse.class
puts "ruby is fun".upcase
puts "ruby is fun".upcase.reverse
puts "ruby is fun".upcase.reverse.downcase #method chain example
puts
#Bang Methods on Strings
word = "picture"
p word.capitalize #this capitalization is only temporary/it's not saved
p word
#To make capitalization permanent we need to reassign the string as below:
#Option 1:
word = word.capitalize
p word
 # Or we may use a bang method so with the exclamation mark at the end:
#Option 2:
 palabra = "gatito"
 p palabra.capitalize!

# There are also bang versions of other methods like upcase and downcase
# reverse and swapcase etc.
p palabra.upcase!
p palabra.downcase!
p palabra
puts
#The .include method
#This method is a boolean one and returns us true or false if the string
#includes within itself given letter or another string. This method
#is case sensitive
parola = "Snow White"
p parola.include?("S")
p parola.include?(" ")
p parola.include?("  ")
#before using this method we can normalize the string to avoid mistakes
#related with capitalization or lowercasing
p parola.downcase.include?("s")
p parola.upcase.include?("NOW")
