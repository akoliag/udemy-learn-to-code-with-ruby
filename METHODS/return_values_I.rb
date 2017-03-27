#Every method in Ruby returns a final value
#The returned value represents the output which is going to be
#always the last line in the method
def add_two_numbers(num1, num2)
  puts "OK, I'm solving your math problem!"
  return num1 + num2
end
#Ruby knows that everything that goes after the word return is the
#final output of the method. It concludes and termintes the entire method.
#Everything that will go below retun in the code won't get executed
 p add_two_numbers(3, 5)
#we put p before the method as it's going to compute the result
p add_two_numbers(765, 56)

#explicit method return is when  we put the word return in a method
#implicit method return is done by every method where the return keyword
#is not written out in the code and in this case the output is going to be
#the last line of the method
def add_two_numbers(num1, num2)
  puts "OK, I'm solving your math problem!"
  num1 + num2 # the result is exactly the same as in the previous example,
  #but we haven't put in here the word return
end

p add_two_numbers(1, 4)
