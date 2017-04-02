# the break keyword allows us to stop the loop or a block at a given moment

# in the below exercise we want to stop at the word "gold":
#prizes = ["pyrite", "pyrite", "pyrite", "pyrite", "gold", "pyrite"]
#i = 0 # setting to 0 will allow us to iterate over every element of the array
#while i < prizes.length
#  current = prizes[i] # current is the variable meaning the current element
  # Ruby is iterating over in a given moment
#  if current == "gold"
#    puts "Yeah, found gold!"
#    break # forces the loop to break at this point if the condition is met
#  else
#    puts "#{current} is not gold!"
#  end
#  i =+ 1 #incremeting "i" at the end to avoid the infinite loop
#end

prizes = ["pyrite", "pyrite", "pyrite", "pyrite", "gold", "pyrite"]
i = 0
while i < prizes.length
  current = prizes[i]
  if current == "gold"
    puts "Yeah, found gold!"
    break
  else
    puts "#{current} is not gold!"
  end
 i += 1
end

# example with .each method and a block:
numbers = [1, 2, 3, "hello", 5, 6, 7]
numbers.each do |num|
  if num.is_a?(Fixnum)
    puts "The square of #{num} is #{num ** 2}"
  else
    puts "That's not a valid number!"
    break # breaks when finds a string
  end
end
