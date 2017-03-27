story = "Once upon a time in a land far, far away..."

p story[5, 4]
p story.slice(5, 4)
#the second argument is counted starting from the first argument and returns
#everything that is in between u and n
p story[8, 9] #this example returns everything from n up to the space after e

puts
p story[0, 5]
p story.slice(0, 5)
p story[0, story.length] #extracts all the string
p story.slice(0, story.length)

#Extracting multiple characters with range object

story = "Once upon a time in a land far, far away..."
p story[27..39] #range application
p story.slice(27..39)#two dots in between indicate range and make
#the ending position inclusive - so with 39


p story.slice(27...39)# three dots make the ending position exclusive
#so up to 39 but not including 39

p story[32..100]#in this case ruby will return the extract including the last
#character so with index position 43 as there is no character
#with the index position 100
p story.slice(32..100)
p story[25..-9] #from d of the word land up to the ninth character
#counting backwards
p story.slice(25..-9)
