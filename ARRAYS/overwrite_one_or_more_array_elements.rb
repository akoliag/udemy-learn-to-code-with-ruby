fruits = ["apple", "grapes", "orange", "banana"]
p fruits[1]
p fruits
fruits[1] = "watermelon" #overwrites index position no.1
p fruits[1]
p fruits
fruits[-1] = "bananas" #overwrites the last element in the array
p fruits
fruits[4] = "raspberry" #adds one more element at the end of array
p fruits
fruits[5] = "strawberry"
p fruits
fruits[10] = "kiwi" # if we assign a value to the index position not being the
#next one to assign a value, Ruby will fill in the places with nil valeus
p fruits #"strawberry", nil, nil, nil, "kiwi"
fruits[2, 3] = ["blackberry", "blueberry"]#overwites 2, 3
p fruits
fruits[0..2] = ["pears", "mandarines", "melons"]
p fruits
fruits[0..3] = ["oranges"]#if we reassign one value to 4 elements, the value
#is assigned only to the first index position and the rest positions are
#going to be removed
