class Gadget
#attr_writer :password
attr_reader :production_number, :apps
attr_accessor :username, :password

def initialize(username, password)
  @username = username
  @password = password
  @production_number = generate_production_number
  @apps =[]
end

def to_s
  "Gadget #{production_number} has the username #{username}.
   It is made from the #{self.class} class and it has the ID #{object_id}."
end

def reset(username, password)
  self.username = username # we need to overwrite the instance variable but
  # it is better to use in here the self keyword which is going to refer to the
  # object at hand - that's going to be a specific gadget instance and this time
  # we're going to call a specific instance method that we have on every gadget
  # object.
  self.password = password
  self.apps = []

end

def password=(new_password)
  if validate_password(new_password)
    @password = new_password
end
end
private

attr_writer :apps # we want it private which means that only other instance
 # methods from within this class definition can call this apps writer method.

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
