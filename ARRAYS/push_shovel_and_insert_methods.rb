#3 ways of adding an element to an array including
#the shovel operator
locations = ["house", "airport", "bar"]
p locations

#the push.method:
locations.push("restaurant", "saloon")#we have to provide an argument here
#as Ruby has to know what to adda th the very end of the array
#(this method always adds an argument at the end of an array)
p locations

#the shovel operator:
locations << "camp" <<"pitch"
# << it's shovel operator and it is a kind of shortcut to add another
#argument/s at the end of an array
p locations

#the insert method:
locations.insert(1, "stadium", "cafe")
#the insert method requires at least 2 arguments. The first one is the index
#position where we want to add an argument and the second one is the
#additional argument
p locations # "stadium" has been added as the index position no. 1 and cafe
#takes over index position no. 2 etc.
