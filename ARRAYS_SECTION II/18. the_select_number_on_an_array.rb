# the select method extracts only the elements that fit certain conditions
# or criteria.
grades = [80, 95, 13, 76, 28, 39]
# we want to extract only the numbers that are greater than 75
matches = grades.select do |number|
  number >= 75
end
# when we use the select method whatever is in the block must evaluate
# to a boolean value so true or false.
p matches.sort # sort puts the values in the ascending order


words = ["level", "selfless", "racecar", "dinosaur"]

palindormes = words.select {|word| word == word.reverse}
p palindormes

palabras = %w[aga, kayak, radar, box, chair]
palabras_1 = palabras.select {|palabra| palabra == palabra.reverse}
p palabras_1
# returns the empty array when I use %w to define strings?
