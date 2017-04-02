# if the array is numeric it's going to sort the aray in an ascending order,
# and if the array consists of strings it's going to sort it starting with
#the capital letters
numbers = [3, 5, 13, -2, 65, 1]
words = ["caterpillar", "Kangaroo", "apple", "zebra"]

p numbers.sort
p words.sort

# .sort! bang method as alaways bang method mutates permanently the array:
p numbers.sort.reverse
p words.sort.reverse
