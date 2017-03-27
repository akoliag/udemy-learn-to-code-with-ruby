#Generating a random number with a range method:
puts rand # when I don't give the rand any argument, it's going to
#generate any random float number from 0 up to 1. Every time we
#execute the command, we get a different random values
puts rand.round(2) #it rounds all the decimal places after the coma
# to 2 decimal places

puts rand.round(4)

puts rand(100) # we put the argument 100 in here and the method is going
#to call any number from 0 to 100 but it will never reach 100.
puts rand(100)
#if we want to get a float bigger that 0-1 we can call the rand and
#multiply it with a given value. See below:
puts rand * 100

puts rand(50..60)
puts rand(50...60)
puts rand(0..160)
