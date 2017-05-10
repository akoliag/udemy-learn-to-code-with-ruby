=begin
There are three ways we can call the super keyword:
- super without parentheses - calls the whole super method
- super with parentheses but no arguments - calls the super method
 not passing to it any arguments from the subclass
- super with parentheses and with arguments

=end
class Car
  attr_reader :maker
  def initialize(maker)
    @maker = maker
  end

def drive
  "Room! Room!"
end
end

class Firetruck < Car
  attr_reader :sirens
  def initialize(maker, sirens)
    super(maker) # we call only the maker argument
    @sirens = sirens
  end

def drive(speed)
  super() + "Beep! Beep! I'm driving at #{speed} miles per hour!"
end
end
# super() means call the super method but don't pass to it any of the
# arguments as if we add an argument only in the subclass and don't
# use empty parentheses, we will get an error. In this case we want
# to use the speed argument only with the subclass method.
ft = Firetruck.new("Ford", 4)
p ft.maker
p ft.sirens
