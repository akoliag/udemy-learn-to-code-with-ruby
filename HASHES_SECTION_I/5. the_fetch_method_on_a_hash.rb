menu = {burger: 3.99, taco: 5.78, chips: 0.5}

p menu[:burger]
p menu[:chips]
p menu[:salad]
p menu.fetch(:burger) # it's the same as p menu[:burger]
# p menu.fetch[:salad] # if we use with the fetch method an argument that does
# not exist, we're going to get an error
# to avoid getting an error with this method, we can provide the second
# argument that will be returned if the first one  is not found:
p menu.fetch(:salad, "not found")
p menu.fetch(:salad, nil)
