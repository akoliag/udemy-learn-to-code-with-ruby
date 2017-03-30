p [1, 2, 3].class
p %w[Hello world].class
p Array.new(1) #this method will create a new array and
#as for syntax it equals to p [], but the value will be returned
#as nil and what's more the number in the brackets specifies and
# represents the total number of arguments within the array
#(see the runner)
p Array.new(3) #returns 3 agruments
p Array.new(5) #returns 5 agruments
p Array.new(5, nil) #the second argument represents the value that
#will be returned
p Array.new(5, true)
p Array.new(2, "Hello")
p Array.new(10, 2)
p Array.new(3, [1, 2, 3])#we can even add an array as the second argument
