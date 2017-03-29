#the same as the square bracket syntax
numbers = [2, 5, 7, 9, 13, 16, 21, 17, 19]
p numbers.slice(3)
p numbers[3]
p numbers.slice(100)#we get nil in here
p numbers[100]
p numbers.slice(2, 3)
p numbers[2, 3]
p numbers.slice(3..4)#inclusive
p numbers[3..4]
p numbers.slice(4...5)#exclusive
p numbers[4...5]
