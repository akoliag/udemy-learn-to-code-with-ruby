=begin
THE .CLASS METHOD ON OBJECTS:
 - Objects receive their structure or design from classes.
 - The .class method returns the class the object was constructed from.
 - The object's class is itself another object.
THE .SUPERCLASS METHOD ON CLASSES:
 - A superclass is the class that a current class inherits from.
  Inheritance follows an "is-a" structure.
 - The .superclass method is called on a class. It returns the parent
  class that the current class inherits from.
 - The class that inherits from the superclass is called the subclass.
 - Every class in Ruby (except BasicObject at the top of the hierarchy)
  has at least one superclass.

CLASS             NUMERIC
OBJECT
          INTEGER       FLOAT

    FIXNUM     BIGNUM       3.14

     5 25    10000000000


THE .ANCESTORS METHOD ON CLASSES:
 - A superclass is the class that a current class inherits from.
 - The .ancestors method can be called on a class. It returns an array of all
  superclasses that the class inherts from.

=end

p 5.class
p 5.class.superclass
p 5.class.superclass.superclass
p 5.class.superclass.superclass.superclass
p 5.class.superclass.superclass.superclass.superclass

puts

p 3.14.class
p 3.14.class.superclass
p 3.14.class.superclass.superclass
p 3.14.class.superclass.superclass.superclass

puts

p [1, 2, 3].class
p [1, 2, 3].class.superclass
p [1, 2, 3].class.superclass.superclass

puts
p 5.class.ancestors #Comparable and Kernel are the modules not the classes
p 3.14.class.ancestors
p [1, 2, 3].class.ancestors
