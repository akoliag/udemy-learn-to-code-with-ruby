# within an instance method body the self keyword will refer to the current
# object. Calling "self" we don't know what self is going to be
# but it will reference to whatever object we will call with the to_s method.
class Gadget
  def initialize
    @username = "User #{rand(1..100)}"
    @password = "topsecret"
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..199)}"
  end

  def to_s # we define this method with the class body
    "Gadget #{@production_number} has the username #{@username}. This is made
     from the #{self.class} class and it has the ID #{self.object_id}."
    # we need to remember to call the intance variable in here, otherwise
    # we will get an error
  end
end
phone = Gadget.new
laptop = Gadget.new
# when we call self with phone, it will refer to the Gadget as phone equals
# Gadget.new
puts phone.to_s
# Variables are just placeholders, the name of the object is not a phone
# or laptop. Phone or laptop are just the labels/placeholders we've given to it.
# We have no clue what the users are going to use as their variables so self keyword
# within this to_s definition basically says "this object". This object that
# has the to_s method on it. Self is tricky and sometimes it will not refer to
# the object e.g when used outside the instance method (outside the instance
# method it will refer to the class itself).
