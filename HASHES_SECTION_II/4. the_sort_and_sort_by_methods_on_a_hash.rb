# Whenever we call the sort or the sort_by method on a hash, we're
# going to get back a multidimensional array.
pokemon = {squitle: "Water", bulbasaur: "Grass", charizard: "Fire"}

# Sort method sorts by the keys:
p pokemon.sort
p pokemon.sort.class

# when calling this method, we get an array with the items in
# an alphabetical order.
p pokemon.sort.reverse # reverse alphabetical order by the key

puts
# Sort_by method sorts by the values and requires a block in which
# we provide 2 variables: one for keys and the second one for values.
# In the body of the block we put what we want to sort by:

p pokemon.sort_by {|pokemon, type| pokemon} # sorts by keys

p pokemon.sort_by {|pokemon, type| pokemon}.reverse

p pokemon.sort_by {|pokemon, type| type} # sorts by values
p pokemon.sort_by {|pokemon, type| type}.reverse
