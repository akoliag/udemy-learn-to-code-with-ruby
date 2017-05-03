=begin

INSTANCE VARIABLES:
- Instance variables are variables that belong to a specific object.
- Instance variables define the object's properties or attributes.
- The instance varables make up the object's state.
- Each object can have a custom state.
- The state of an object can change over time.

DEFINE AN INSTANCE VARIABLE:
- Instance variables begin with the @ symbol (e.g. @name).
- The @ symbol is called a SIGIL, a special character that denotes
 the variable's scope.
- Without the @ sigil, the variable would be interpreted as a local variable
 to the method it is used in.

 @name = "Boris"
 @age = 25

THE INITIALIZE METHOD:
- The initialize method is called immediately when an object is instantiated
 from a class with the new method.
- The initialize method offers an opportunity to assign values to instance
 variables in order to define the object's state.
- If the initialize method is not defined in the class, each object is
 initialized with no state (like the Gadget objects in the previous lessons)
- the assignement of values to instance variables does not mean the values
 have to stay constant. The object's state can be altered later.
=end
class Gadget
  def initialize
    @username = "User#{rand(1..100)}"
    @password = "topsecret"
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..199)}"
  end
end
phone = Gadget.new
laptop = Gadget.new
# whenever a new object is created with the .new method the initialize method
# is going to run automatically and all the new object will be set with
# the instance variables
puts phone
puts phone.inspect
p phone
p laptop
# if we call instance_variables method on the object, it returns all instance
# variables the object has:
p phone.instance_variables
p laptop.instance_variables
