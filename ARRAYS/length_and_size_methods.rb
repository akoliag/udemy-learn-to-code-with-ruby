#length method returns the total number of elements within the array
#including the nil value and it starts counting at 1 not at 0
array = [1, 2, 3, 4, 4.12, true, nil, nil, "bo tak"]
p array.length #returns count of 9 in this case
#the size methods does exactly the same thing
p array.size
#the count method also does the same but if we provide an argument with this
#method it is going to count how many times this argument appears in the array
p [1, 2, 3, 3, 2, 4, 2, nil].count #counts the number of elements in an array
p [1, 2, 3, 3, 2, 4, 2, nil].count(2) #counts how many times 2 appears in the
#array
p [true, true, false, true, false, false, false].count(false)
