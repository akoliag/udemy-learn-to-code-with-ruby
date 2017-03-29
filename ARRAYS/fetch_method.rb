#Extracting elements based on the index postion. This method does not return
#nil value if we call an index position that doesn't exist within an array. It
#simply throws an error.
names = ["Tom", "Cameron", "Bob"]
p names[2]
p names[100]
p names.fetch(2)
#p names.fetch(100) -triggers the error as there is no index position 100
#in the array
#To avoid Ruby throwing an error we may put the second argument meaning
#if the index position given as the first argument in an array doesn't exist
#return the value provided as the second one (it can be nil, a string, Boolean
#another array etc.)
p names.fetch(100, nil)
p names.fetch(100, "unknown")
p names.fetch(100, ["A", "B"])
