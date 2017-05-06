require "./circle" #calling rb file from another folder
require "./rectangle"
require_relative "square"
# require_relative looks in the current directory so we don't need to put ./
# before it.
puts Circle.area(10)
puts Rectangle.area(8,9)
puts Square.area(34)
