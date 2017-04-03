# a multidimensional array is an array containing other arrays together
users = [["Bob", 25, "Male"], ["Susan", 48, "Female"], ["Larry", 62, "Male"]]
p users[0]
p users[1] # we get back the whole nested array as it is treated as one element
# with the index position no. 1
p users[1][2] # this extracts the element with index position no. 2 from the array
# with index position no. 1
bob, susan, larry = users
p bob
p susan
p larry
# to unpack a multidimensional array we simply assign it to so many elements as
# it contains. We put these elements on the left and already defined "users"
# variable on the right then we output all variables (see the runner window)
