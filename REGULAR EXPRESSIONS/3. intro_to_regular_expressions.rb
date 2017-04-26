=begin

 - A regular expression in another Ruby object. The class is Regexp.
 - Regular expressions are used to match patterns in srings.
 - They are created with two forward slashes (//) syntax.
 - The condition is placed between the two forward slashes.

 The Syntax -  Basics:
 - The =~ syntax will return the index position of the first match
  e.g. srting =~ //

=end

puts //.class
phrase = "The Ruby Programming Language is amazing!"

p phrase =~/T/ #returns the first index position with the capital letter "T"
p phrase =~/R/
p phrase =~/m/ #returns the first index position with the  letter "m"
p /m/ =~ phrase # this combination works fine as well
p phrase =~/!/
p phrase =~/./ # means find any character at all - special combination
# for regular expression
p phrase =~/ / # returns the first space
p phrase =~/x/ # if there is no character "x", we get nils
p phrase =~/Ru/ # with the multiple characters it returns the index position
# of the first character
# we need to watch out for special characters as sometimes they mean something
# completely different than we would expect 
