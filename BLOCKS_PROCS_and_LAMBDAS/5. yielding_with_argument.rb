# Yielding with an argument to pass to the block:
def speak_the_truth
  yield "Boris" if block_given?
end

speak_the_truth{|name| puts "#{name} is brilliant!"}
# in the block we provide a varaible name representing the word
# "Boris". The "Boris" string is going to be passed to the block,
# the block is going to define it as the name block variable
# and then it is going to interpolate it in the string in the block.

speak_the_truth{|name| puts "#{name} is incredible"}

# another option:
def speak_the_truth(name)
  yield name if block_given?
end
speak_the_truth("Boris") {|name| puts "#{name} is brilliant!"}
# we may specify variable in the method and then provide the string
# "Boris" as an argument to the method call as above.  In this way it
# is easier to modify the argument.
speak_the_truth("Sarah") {|name| puts "#{name} is brilliant!"}

# If we provide more variables in the block than in the method,
# Ruby is going to return the nil in place of non-exisiting value.
speak_the_truth("Sarah") {|name, age| puts "#{name} is #{age} years old!"}
# to prove that:
speak_the_truth("Sarah") do |name, age|
  p name
  p age
  puts "#{name} is #{age} years old."
end

puts
def number_evaluation(num1, num2, num3)
  puts "Inside the method"
  yield(num1, num2, num3)
end
product = number_evaluation(5, 10, 15) {|num1, num2, num3| num1*num2*num3}
p product
sum = number_evaluation(5, 10, 15) {|num1, num2, num3| num1+num2+num3}
p sum
