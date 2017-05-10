class Employee


attr_accessor :age
attr_reader :name
 def initialize(name, age)
   @name = name
   @age = age
 end

 def introduce
   "Hi, my name is #{name} and I'm #{age} years old."
 end
end

boris = Employee.new("Boris", 25)
p boris
puts boris.class
puts boris.introduce

class Manager < Employee
# this is how we create a subclass after the subclass we put less
# symbol followed by the superclass name.
end

class Worker < Employee
end

bob = Manager.new("Bob", 48) # we need to provide name and age arguments
# as Manager and Worker are subclasses of Employee class where initialize
# method requires these two arguments.
dan = Worker.new("Daniel", 36)

p bob.class
p dan.class
p bob.introduce # introduce method is available on the Manager and
# Worker classes as they inherit from the Employee class
p dan.introduce

p Manager.ancestors
p Manager.superclass
p Manager.superclass == Worker.superclass
puts Manager < Employee # with that we can check if the subclass
# inherits from a given class
