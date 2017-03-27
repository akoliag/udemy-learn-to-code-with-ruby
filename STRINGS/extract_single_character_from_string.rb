#a string in ruby is called mutable so subject to change
#so the characters within a string can be altered in ruby
#which is not true in all programming languages

story = "Once upon a time in a land far, far away"
p story.length

#every character within a string gets its own numeric sequence
#but programming lgs start counting at 0

#index position = a count of a given character in a string
#e.g. "Once" - o = 0 index position, n = 1 index position etc.

#to extract characters from a string we need to know their index positions

p story[3] #square brackets in which we put the index position of a character
#we want to extract

p story[-1] #extracts the last character 'cause starts counting at the end
#of a string

p story[110]
p story[-300]
 #if there is none index position like that in a string
#ruby will return "nil"

p story.slice(3)
p story[3]
p story.slice(-300)
p story[-300]
#square brackets and the slice method are exactly the same and return
#the same results
