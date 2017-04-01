#The map and the collect methods are exactly the same.

numbers = [1, 2, 3, 4, 5]
squares = []
numbers.each { |number| squares << number ** 2}
p squares

# .map or .collect methods are used when we want to create a new array which
# will be the result of applying some kind of operation to every single
# element in another array. Both methods return back a brand new array with
# that operation.

# With .map method I don't have to create a new empty array and then push
# the result to it. See below:
numbers.map {|number| number ** 2}
# I can assign the result of the above to the variable:
squares = numbers.map {|number| number ** 2}
p squares

#Compering Fahrenheit to Celsius
fahr_temperatures = [105, 73, 40, 18, -2]

p fahr_temperatures.map do |temp|
  minus32 = temp - 32
  minus32 *(5.0/9.0)
end
# printing the above without assigning it to a new variable we get
# the enumerator. See the runner window.
celsius_temperatues = fahr_temperatures.map do |temp|
  minus32 = temp - 32
  minus32 *(5.0/9.0)
end
p celsius_temperatues

# replacing the .map with the .collect method:

celsius_temperatues = fahr_temperatures.collect do |temp|
  minus32 = temp - 32
  minus32 *(5.0/9.0)
end
p celsius_temperatues
# we get exactly the same result. There is no difference between these
# 2 methods.

# puts within a block of .map and .collect methods:
# results = [1, 2, 3].map {|number| puts number **2}
# p results
# if we put "puts" within a block with these mehods we get a nil value that is
# why we need to avoid doing so.

results = [1, 2, 3].map {|number| number **2}
p results
results = [1, 2, 3].collect {|number|  number **2}
p results

# CHALLENGE by Boris:

# numbers = [3, 8, 11, 15, 89]
# Write a cube method that accepts an array and returns a new array.
# The new array will have all the values from the original one cubed.
numbers = [3, 8, 11, 15, 89]


def cubes(array)
  array = [3, 8, 11, 15, 89].map {|number| number**3}
end

p cubes(numbers)


def cubes(array)
  array = [3, 8, 11, 15, 89].collect {|number| number**3}
end

p cubes(numbers)
