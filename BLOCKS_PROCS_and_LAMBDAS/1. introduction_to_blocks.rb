=begin

Review of blocks:

 - A block is a collection of code to be executed
 - A block is NOT an object in Ruby
 - Blocks must be attached to a method call as it cannot exist
   without a corresponding method
 - Blocks alter the execution of the method
 - A block is NOT an argument/parameter to the method
 - Blocks can be defined with {} or do end
 - A block can get or update the value of local variables within a block

------------------METHODS vs. BLOCKS-----------------------

 - Methods can be invoked over and over
 - In comparison, a block will only be called once, then disappears
 - A block isilates actions away from the method
  EXAMPLE: each
   [3, 5, 7, 9].each {|num| puts num ** 2}

=end
evens = [2, 4, 6, 8, 10]
evens.each {|number| puts number ** 3}

colors = %W[red purple green blue]
statements = colors.map { |color| "#{color} is a great color!"}
p statements

5.times do |index|
  puts index
  puts "Let's move on to the next loop."
end
