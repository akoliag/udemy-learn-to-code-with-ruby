a = [1, 2, 3]
b = [1, 2, 3, 4]
c = [3, 2, 1]
d = [1, 2, 3]
p a == b #returns false as compared arrays have to be exactly the same if it
#comes to length, order and content.
p a == c #false as the order is different
p a == d

p a != b #true
p a != c #true
p a != d #false

a = ["John", "Joanna", "Anna", "Tom"]
b = ["John", "Joanna", "Anna", "tom"]
c = ["John", "Joanna", "Anna", "Tom"]
p a == b
p a == c
p a != b
p a != c 
