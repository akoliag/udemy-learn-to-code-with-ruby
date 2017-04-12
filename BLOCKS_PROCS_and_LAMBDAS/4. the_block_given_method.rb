# this method allows us to enable some security in case a block is
# not attached to a method call that expects it.

def pass_control_on_condition
  puts "Inside the method"
    yield if block_given? # a check if the block has been provided in the
                  # method call
  puts "Back inside the method"
end

pass_control_on_condition{puts "Hello there"}
# if we include block_given in the method body and don't provide
# a block with the method call later, the yield part is going to
# be omitted and the method call won't return an error.
