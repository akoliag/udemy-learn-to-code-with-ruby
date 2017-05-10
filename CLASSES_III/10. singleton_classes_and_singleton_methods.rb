=begin
Singleton method is a method that only exists on one single instance of
an object that we instantialize from a class.

=end

class Player
  def play_game
    rand(1..100) > 50 ? "Winner!" : "Loser!"
  end
end
bob = Player.new
boris = Player.new

p bob.play_game
p boris.play_game

def boris.play_game # this method is going to be available only on the boris
   # object and it overwrites the class method in the context of this object
   # and will always return true with boris
   "Winner"
end

puts
p bob.play_game
p boris.play_game # returns the random result
p boris.class.ancestors # will not show us the singleton method
p boris.singleton_methods # returns object's singleton  methods
p boris.singleton_class
