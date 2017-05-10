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

end

class Worker < Employee
end

bob = Manager.new("Bob", 48)
dan = Worker.new("Daniel", 36)

# checking if a given object belongs to a given class:
puts bob.is_a?(Manager)
puts bob.is_a?(Worker)
puts bob.is_a?(Employee)
puts dan.is_a?(Object)
puts dan.is_a?(Kernel)
puts dan.is_a?(BasicObject)
puts
# the instance_of method will return true only if the Object
# inherits directly from the class that is passed as an
# argument. It can't be any of the superclasses or the modules
# above.
puts bob.instance_of?(Manager)
puts bob.instance_of?(Employee)
