half_alphabet = "a".."m"
puts half_alphabet.include?("j") # we check with this method whether
#our varaible includes a letter given as an argument in the brackets
puts half_alphabet.include?("Z")

numbers = -14...79
puts numbers.include?(15)
puts numbers.include?(79)
puts numbers.include?(-1)

p half_alphabet === "k" #triple operator checks whether the value is
#within a range
p numbers === 89
p numbers === 34
