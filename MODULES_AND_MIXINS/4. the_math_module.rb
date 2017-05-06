=begin
apart from creating custom modules, Ruby has also built-in ones. Some of them
have to be called to the file by require command, and some of them are
imported automatically e.g. math module is automatically available. It gives
us the access to a bunch of constants and methods relating to the various
methematical functionalities.
=end

# to access the constant:
puts Math::PI

# to access the method:
puts Math.sqrt(9) # square root af a number
puts Math.sin(90)
