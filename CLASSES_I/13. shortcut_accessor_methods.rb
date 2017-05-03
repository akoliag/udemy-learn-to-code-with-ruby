=begin

attr_accessor attribute provides us with both the reader/getter method and
the writer/setter method. After attr_accessor we need to put the name
of instance variable we create it for:
e.g.
attr_accessor :username
If we have more than one instance variable that we want to use these attributes
for we just need to separate them with coma.
=end

class Gadget

  attr_accessor :username # with this attribute we don't need the ones commented
  # below as it provide them for us
  # def username - reader method
  #    @username
  #  end

  # def username=(new_username) - setter method
  #  @username = new_username
  # end

  attr_reader :production_number #this is the reader method only

  #  def production_number
  #    @production_number
  #  end
 attr_writer :password

  #def password=(password) #setter method overwrote the instance variable value
  #   @password = password
  # end

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
p phone.username
p phone.production_number
phone.username = "usernamepassword"
p phone.username
