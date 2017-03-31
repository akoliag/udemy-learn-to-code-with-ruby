3.times # this method requires a block - collection/chunk of code that
#modifies how the method performs. There are 2 ways of providing
#a block: curly braces (used with 1-line code) or do and end which
#is executed when we have multiple lines of code
3.times{puts "Hello there"}#returns ""Hello there" 3 times
#we can also create a block variable inside a block putting it
#in vertical pipes
3.times{ |number| puts "I'm currently on loop number #{number}"}
#block variable represents the current iteration or the current
#loop I'm on within my .times method.
#Iterations in Ruby start counting at 0.
5.times do |number|
  square = number * number
  puts "The current number is #{number} and its square is #{square}"
end
#the block variable can be used only within a block. If we try to call it
#outside the block, we will get an error as anything that exists within
#a block is gone as soon as the method that calls that block is done
#executing.
#puts square - triggers an error
