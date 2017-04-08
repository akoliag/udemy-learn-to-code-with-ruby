# Splat arguments are used when the number of expected method arguments
# is unknown.
# (*numbers) - * followed by the name of variable indicates splat
# arguments and allows us to enter as many arguments as we need. When
# using splat arguments, the parameters are going to come in as an array.
def sum(*numbers) # numbers in this context of method body
                   # represent the array of all the arguments that are going
                   # to come into the method.
sum = 0
numbers.each {|num| sum +=num}
sum
end

p sum(1, 2, 10, 1456, -12, -1234, 897)
p sum()
# method can be called with infinitive number of positive and negative
# arguments when the splat arguments are used.
