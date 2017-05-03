class Gadget
  def initialize
    @username = "User #{rand(1..100)}"
    @password = "topsecret"
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..199)}"
  end

  def to_s # we define this method with the class body
    "Gadget #{@production_number} has the username #{@username}."
    # we need to remember to call the intance variable in here, otherwise
    # we will get an error
  end
end
phone = Gadget.new
puts phone.respond_to?(:to_s)
puts phone.to_s

# we can override this .to_s method that is inherited from the Object class
# by defining our own to_s custom method within our class body. If we call a
# given method, Ruby looks for it in the class methods first and then in the
# methods that are inherited. That is why our to_s method is going to be taken
# first as when Ruby finds our Gadget class to_s method it won't look any further.
