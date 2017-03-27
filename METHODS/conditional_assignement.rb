#conditional_assignements:
#It allows us to assign a brand new value to a variable if the current value
#of this variable is nil or a nil object. the modifier is ||=

x = nil
p x

x ||=5 #it assigns the new value to the variable only if the current value = nil
p x

#if I try to assign a value of 10 to x right now , the action will fail as x
#has already the value of 5 not the value of nil
x ||= 10
p x

greeting = "Hello"
extraction = 0
letter = greeting[extraction]
p letter
letter ||= "Not found"
p letter
puts

greeting = "Hello"
extraction = 100
letter = greeting[extraction]
p letter
letter ||= "Not found"
p letter
