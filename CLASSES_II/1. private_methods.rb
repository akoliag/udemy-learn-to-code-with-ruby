class Gadget
attr_writer :password
attr_reader :production_number
attr_accessor :username

def initialize(username, password)
  @username = username
  @password = password
  @production_number = generate_production_number # equals the instance method
  # define below in the class body. When the initialize method is called
  # all the instance methods provided in the class body are available on the
  # object.
end

def to_s
  "Gadget #{production_number} has the username #{username}.
   It is made from the #{self.class} class and it has the ID #{self.object_id}."
end
end
# initialize is a private method and it cannot be called on the object. It is
# not available for the use on the public frontend interface. The benefit
# of the private method is that it cannot be called outside the object.
# It can only be called by another instance method on the same object.
# When the private initialize method is called, all other instance methods
# are already available.
def generate_production_number
  start_digits = rand(1000..9999)
  end_digits = rand(1000..9999)
  alphabet = ("A".."Z").to_a
  middle_digits = "2017"
  5.times {middle_digits << alphabet.sample}
  "#{start_digits}-#{middle_digits}-#{end_digits}"
end

phone = Gadget.new("user", "password")
p phone.production_number
#  the problem is that we can also access the production_number externally
# e.g. using the generate_production_number method. In that case we can
# generate 2 production_numbers for 1 object. We don't want the generate_
# production_number method to be exposed and available publically. We want to
# make that method private. Making it private means that we cannot call it
# on an object. It is still available inside and other instance methods that we
# call on the object have access to this method.
