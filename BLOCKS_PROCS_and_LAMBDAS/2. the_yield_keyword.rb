=begin

The yield keyword transfers control from the method to the block that is
attached to the method call. When we have a yield keyword the method stops
execution and waits until the block is done executing whatever is within it.
!If we use the yield keyword, Ruby is expecting a block with the method call!
If we don't provide this block, we're going to get an error.

--------------------------------------------------------------------------------
Blocks implicitly return the last evaluation back to the method that calls them.
Because the return is implicit, we may not call the return keyword in a block
as we'll get an error.
--------------------------------------------------------------------------------
=end

def pass_control
  puts "This is inside the method."
  yield # passing control from the method to the block
  puts "Now I'm back inside the method."
end

pass_control {puts "Now I'm inside the block."} #see the runner window
puts

pass_control do
  puts "This is the first line of the block."
  puts "Yey, still inside the block."
  puts "Let's come back to the method body =]"
end
puts
def who_am_I
  adjective = yield
  puts "I'm very #{adjective}"
end

who_am_I {"handsome"}
# because "handsome" is the last evaluation within a block it's going to be an
# implicit return. Just like the last evaluation of a method is going to serve
# as the implicit return of the method, whatever is the last evaluation within
# a block serves as the official return value.

# Multiple yields within a method:
def multiple_pass
  puts "Inside the method"
  yield
  puts "Back inside the method"
  yield
end

multiple_pass {puts "Now I'm inside the block!"}
