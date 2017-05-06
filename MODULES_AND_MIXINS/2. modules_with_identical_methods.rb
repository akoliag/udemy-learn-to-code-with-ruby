=begin
Different modules can heve methods with the exact same names and we're not
gonna run into any kind of error as they enclose methods in separte isolated
namespaces. Professionally, we should store only one modulde per file.
=end

module Square
def self.area(side)
  side * side
end
end

module Rectangle
def self.area(length, width)
  length * width
end
end

module Circle
PI = 3.14159
def self.area(radius)
  PI*radius*radius
end
end

puts Square.area(10)
puts Rectangle.area(8, 7)
puts Circle.area(5.5)
# in the above we can provide area method as each module encloses its own
# area method. It is not a common one for all 3 modules.
