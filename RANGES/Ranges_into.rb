#Range is a sequence of numbers or letters.

nums = 1..5 #we put the first..and the last value of our range
p nums
p nums.class
#three dots exclude the final value of the range:
numbers = 1...5
p numbers
p numbers.class

#Methods available on ranges:
p nums.first #returns the first element of range
p nums.last #returns the last element of range
p nums.first(4) #putting this argument I get the first four numbers
p nums.last(1) #using it we get the last argument
