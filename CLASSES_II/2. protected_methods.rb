=begin
Protected methods fall somewhere in the middle of the private and public
methods.

Review of Methods:
- Public methods allow interaction with an object.
- Public methods can be called by any other object.
- Private methods can only be called within an object.
- Private methods cannot be invoked by another object.
- Private methods cannot be called with an explicit receiver (the object
 that is getting the command or a method) - only the current
 object is able to receive the method.

What is a protected method?
- Protected methods can be invoked only by the objects of the same class.
- Protected methods can be called within the same family of objects.
- Protected methods are used to compare objects of the same class; they can be
 accessed by other class objects.
=end

class Car
def initialize(age, miles)
  base_value = 20000
  age_deduction = age * 1000
  miles_deduction = (miles/10.to_f)
  @value = base_value - age_deduction - miles_deduction
end
def compare_car_with(car)
  self.value > car.value ? "Your car is better" : "Your car is worse"
end
# we don't use the attr_reader in here as we don't want to expose the car value
 protected

def value # it is like the reader method but it is protected
  @value
end
end

civic = Car.new(3, 3000)
#p civic.value # we can't call it as we get an error in here as the method
# is protected. We can't access it outside of the object. In comparison to
# the private method it can access the other car method to compare it but it
# is not gonna expose it. With private method we couldn't access the other car's
# value.
fiat = Car.new(2, 2000)
p civic.compare_car_with(fiat)
