# In the hash the detete method deletes the key-value pair represented by
# a given key. It also returns the value that is being deleted in a variable.
# It permanently mutates the original hash and accepts only one argument.

superheroes = {spiderman: "Peter Parker", superman: "Clark Kent",
                batman: "Bruce Wayne"}

p superheroes
removed = superheroes.delete(:spiderman) #the key is the argument to this method
p superheroes

# If we want to store the removed value, we can assign it to another variable
# but the variable will hold only the value without the key.

p removed
