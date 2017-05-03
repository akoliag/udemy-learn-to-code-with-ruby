# The name of the file should mirror the name of the class we're going to
# place within it. Ideally we should have only one class per file.
# to create the class we put the word "class" followed by the name of the class
# we want it to have - must start with a capital letter.

class Gadget
end

phone = Gadget.new
laptop = Gadget.new
microwave = Gadget.new
puts Gadget.superclass # inherits from Object class
puts Gadget.superclass.superclass
puts phone # by calling it right now we get the object position in memory
puts laptop # every object has a separate address in the memory and it changes
# every time we run the program
puts microwave.class
puts

puts phone.methods.sort
puts
# is_a? checks if the object inherits from a specific class
puts phone.is_a?(Gadget)
puts phone.is_a?(Object)
puts phone.is_a?(BasicObject)

# .respond_to? checks if the object responds to a given method

puts
puts phone.respond_to?(:class)
puts phone.respond_to?(:methods)
puts phone.respond_to?(:respond_to?)
puts phone.respond_to?(:is_a?)
puts phone.respond_to?(:length)
