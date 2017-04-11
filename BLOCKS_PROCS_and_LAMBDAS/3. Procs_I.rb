=begin

A proc is a new type of object functioning essentailly as a saved block.
When we have a block that we use a lot and we don't want to rewrite over and
over again that is when we create a proc.

=end
a = [1, 2, 3, 4, 5]
b = [6, 7, 8, 9, 10]
c = [11, 12, 13, 14, 15]

a_cubes = a.map {|num| num **3}
b_cubes = b.map {|num| num **3}
c_cubes = c.map {|num| num **3}

p a_cubes
p b_cubes
p c_cubes
puts
# Instead of duplicating the above blocks we can create a proc.
# The difference between the block and proc is that a block is not an object.
# We may not call a method on it or save it to a variable and it's basically
# gone as soon as the method calling it is done executing.
# Procs are designed to be reused. They do not care about the arguments
# and are entirely self-contained.

# Creating a proc we should assign it to a variable:
cubes = Proc.new {|number| number **3}
#squares = Proc.new {|number| number **2}
a_cubes = a.map(&cubes) #instead of providing a block in here, we provide a proc
                        # which is marked by the ampersand
#b_cubes = b.map(&squares)
b_cubes = b.map(&cubes)
c_cubes = c.map(&cubes)

p a_cubes
p b_cubes
p c_cubes
puts
#To condense the above:
a_cubes, b_cubes, c_cubes = [a, b, c].map {|array| array.map(&cubes)}
p a_cubes
p b_cubes
p c_cubes
puts
# Example no. 2
currencies = [10, 20, 30, 40, 50]
to_euros = Proc.new{|currency| currency * 0.95}
to_rupees = Proc.new{|currency| currency * 68.13}
to_pesos = Proc.new{|currency| currency * 20.67}

p currencies.map(&to_euros)
p currencies.map(&to_rupees)
p currencies.map(&to_pesos)
puts
#The proc may also return a boolean value:
ages = [16, 21, 34, 49, 78, 82]
is_old = Proc.new do |age|
 age > 55
end
p ages.select(&is_old)
p ages.reject(&is_old)
