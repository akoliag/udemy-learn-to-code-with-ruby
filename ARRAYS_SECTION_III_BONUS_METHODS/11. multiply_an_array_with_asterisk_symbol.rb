# Review of the asterisk symbol:

p 3 * 4
p "Ruby" * 3 # concatenates the word "Ruby" 3 times without a space
p [1, 2, 3] * 5 # multiplies the elements of the array 5 times and
# returns a new array with 15 elements in it.
p %w[ A B C D E] * 4

# Task 1

# Return a new array with the array that's passed in
# as an argument multiplied by the number argument
# DO NOT use the asterisk symbol!

def custom_multiply(array, number)
  result = []
  number.times {array.each { |elem| result << elem}}
  result
end

p custom_multiply([1, 2, 3], 3)
