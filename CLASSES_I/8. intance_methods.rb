=begin
When we define instance method on a class, we define some kind of functionality,
we define some kind of message that we can send to the object and tell it
to do something. Instance methods are not shared between objects rather
whenever an instance or an object is created each method is copied from
the class definition to that specific object. The class is just the blueprint
that says here is how you can process that message. When we call the method,
we send it exclusively to a specific object.
=end
class Gadget
  def initialize
    @username = "User #{rand(1..100)}"
    @password = "topsecret"
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..199)}"
  end

  def info # we define this method with the class body
    "Gadget #{@production_number} has the username #{@username}."
    # we need to remember to call the instance variable in here, otherwise
    # we will get an error
  end
end
phone = Gadget.new
laptop = Gadget.new

puts phone.info
puts laptop.info
# info method cannot be called on its own like any other method. It can be
# called only on a Gadget object as it belongs to objects, it does not exist
# separately. It needs a method on which it can be called. That object is called
# the receiver as it receives the method call.
# the info method has been added to the methods list that are available
# on the Gadget objects. See the runner:
puts phone.methods.sort
puts
puts phone.methods - Object.methods # we get the method defined by us, it is
# not inherited from the Object class
