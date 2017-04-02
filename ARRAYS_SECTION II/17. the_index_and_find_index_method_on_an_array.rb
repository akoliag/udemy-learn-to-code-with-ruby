#index and find_index methods are identical

colors = %w[ red blue green red]
p colors.index("green") # returns the index position of green
p colors.index("red") # there are 2 "red" elements within an array so the
# method returns the index position of the first one
p colors.find_index("blue")
p colors.find_index("orange") #we get nil if the value doesn't occur in the array
