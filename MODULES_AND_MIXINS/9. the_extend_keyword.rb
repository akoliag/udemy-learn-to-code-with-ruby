=begin
The extend keyword takes the module methods and adds them to the class methods
and we can call them on the class.
=end

module Announcer
def who_am_I
  "The name of this class is #{self}."
end
end

class Dog
  extend Announcer
end


class Cat
  extend Announcer
end

watson = Dog.new
#p watson.who_am_I # when we call the method from the module by include,
# we can call it on the class object
# if we change include for extend, this: p watson.who_am_I will trigger
# an error as the module methods are no longer available on the object
# from a given class but on the class itself.
# Now this method is called on the class itself:
p Dog.who_am_I
p Cat.who_am_I
# the extend keyword focuses on the class itslef not on the class objects.
