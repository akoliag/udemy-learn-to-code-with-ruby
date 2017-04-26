# these methods are use to find and replace certain strings within other strings
puts "whimper".sub("m", "s")
# it takes 2 arguments: the first one is what we want to replace
# and the second is with what we want to do it. It changes the first
# occurrence only.
puts "wordplay".sub("w", "sw")
puts "wordplay".sub("word", "sword")
word = "aspirin"
p word
p word.sub!("in", "ing")
p word

# gsub = global substitution
p "an apple".gsub("a", "-") # replaces all the "a" occurences
p "555 555 1234".gsub(" ", "")
p "(555)-555 1234".gsub(" ", "").gsub("(", "").gsub(")", "").gsub("-", "")
# instead of using 4 gsub methods we may use regular expressions
p "(555)-555 1234".gsub(/[-\s\(\)]/, "") #\( excluding lefy bracket
# \) excluding right bracket
