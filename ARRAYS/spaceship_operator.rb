#<=> the spaceship operator returns one of four possible values:
# -1
# 0
# 1
# nil
p 5 <=> 5 #if the two numbers are the same on both sides, we get the value of 0
#in comparison to boolean operator we don't get in here true or false, but
#the number
p 5 <=> 10 #if the value on the right side is grater, we get -1

p 5 <=> 1 # if the right side is smaller, we get positive 1
p 5 <=> [1, 2, 3] #if two side are incomparable (e.g. we compare number with
# an array), we get nil

p [3, 4, 5] <=> [3, 4, 5]
p [3, 4, 5] <=> [nil, 4, 5]
p [3, 4, 5] <=> [3, "a", 5]
p [1, 2, 3] <=> [1, 2, 10]
p [20, 2, 3] <=> [1, 2, 10]
