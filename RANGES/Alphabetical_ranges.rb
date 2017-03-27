#Alphabetical ranges:
#before using a range we have to assign it to a varaible or to put
#parentheses around the numbers as below:
puts (1..10).first(3)

puts
alphabet = "A".."z"
puts alphabet.first(5)
p alphabet.first(5) # p shows the type of the output so a range
p "Tom Soyer" # p shows that this is a string
puts alphabet.last(40)
#we need remember that capital letter range goes before lowcase range
#and after the capital range we have a bunch of special signs and after
#that we have a lowcase range so when we do a range consisting of
#capital and lowcase letters we need to remember that it is going
#to cover all this ranges (example in the Atom runner)
