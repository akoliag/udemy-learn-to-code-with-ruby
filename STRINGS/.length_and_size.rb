a = "Hi there"
b = "Hi, my name is Aga"
c = " "
d = ""

 p a.length
 p b.length
 p c.length
 p d.length

puts

#the strings with the below methods do not need to return the same
#type of object. It may return a fixnum or a boolean value etc.:

p a.length.class
p b.length.next
p c.length.odd?
p d.length.even?.class

#evetything in the quotes counts as a valid character
#including space, question/exclamation mark etc.

puts

 p a.size
 p b.size
 p c.size
 p d.size


#Both methods - .length and .size  give the same results
