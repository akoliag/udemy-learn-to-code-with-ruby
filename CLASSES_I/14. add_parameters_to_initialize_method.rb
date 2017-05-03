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

  #def password=(password) #setter method overwrited the instance variable value
  #   @password = password
  # end

  def initialize(username, password)
    @username = username
    @password = password
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..199)}"
  end

  def to_s # we define this method with the class body
    "Gadget #{@production_number} has the username #{@username}. This is made
     from the #{self.class} class and it has the ID #{self.object_id}."
    # we need to remember to call the intance variable in here, otherwise
    # we will get an error
  end
end
g1 = Gadget.new("rubyfan102", "programming123") # in here we provide
# the arguments that will go to the initialze method and these values are going
# to be assigned to username and password instance variables.
g2 = Gadget.new("misterprogrammer", "bestpassever")
g3 = Gadget.new("sportfan100", "topsecret")
p g1.username
p g1.production_number
g1.username = "anothergreatename"
p g1.username
