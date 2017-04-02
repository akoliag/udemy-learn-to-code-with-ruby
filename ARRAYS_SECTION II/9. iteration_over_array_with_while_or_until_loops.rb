# with while loop we basically iterate over an index position incrementing
# it one by one.

animals = ["lion", "zebra", "baboon", "cheetah", "elephant", "kangaroo"]
i = 0 # we define "i" variable and set it equal to 0 which will allow us to go
# over every element of the array; to stop the loop we need to put i += 1
# at the end of the loop

while i < animals.length # will iterate dynamically even if we add another
  # elements to the array. If we set while i < 4 (not the animals.length),
  # the loop would stop on the 4th  element and would not cover the rest
  puts i # returns the index position
  puts animals[i] # extracts the value at a given index position
  i += 1
end

puts

until i == animals.length # will iterate over until the animals.length
  puts i # returns the index position
  puts animals[i] # extracts the value at a given index position
  i += 1
end
