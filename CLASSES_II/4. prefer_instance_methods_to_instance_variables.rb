class Gadget
#attr_writer :password
attr_reader :production_number
attr_accessor :username, :password

def initialize(username, password)
  @username = username
  @password = password
  @production_number = generate_production_number # equals the instance method
  # defined below in the class body. When the initialize method is called
  # all the instance methods provided in the class body are available on the
  # object.
end

def to_s
  "Gadget #{production_number} has the username #{username}.
   It is made from the #{self.class} class and it has the ID #{object_id}."
   # instead of calling instance variable (@production_number)
   # we call instance method (self.production_number). It will trigger
   # the intstance method which will then access the instance variable.
   # when we're dealing with getters, we can even simplify the process
   # further removing the self keyword because Ruby will intuitively know
   # to look for an instance method in the same object. However, we cannot do
   # that with self.class as after removing self keyword we will get only
   # class word which is a built-in Ruby keyword, and Ruby will get confused
   # about that. It is preferred to use instance methods over the instance
   # variables as we call the value of this method directly and we can
   # easily alter the presentation of the result.
end

def password=(new_password)
  if validate_password(new_password) # if password equals validate_password
    #method, if it's true then put the new_password
    @password = new_password
end
end
private
def generate_production_number
  start_digits = rand(1000..9999)
  end_digits = rand(1000..9999)
  alphabet = ("A".."Z").to_a
  middle_digits = "2017"
  5.times {middle_digits << alphabet.sample}
  "#{start_digits}-#{middle_digits}-#{end_digits}"
end

def validate_password(new_password)
  new_password.is_a?(String) && password.length >= 6 && new_password =~ /\d/

end
end
