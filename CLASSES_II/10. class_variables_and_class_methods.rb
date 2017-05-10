=begin
Instance variable and instance method belong to the instance created from
the class. Instance variable is an attribute that belongs on an object and
instance method is the message that we can send to the object.

What is a class variable?
- Some pieces of data extend beyond the scope of a single object.
- A class variable solves the issue of data duplication across instances.
- A class variable belongs to the whole class rather than to one object.
- Class variables store information that does not pertain to an instance.

What is a class method?
- A class method is a method available on the class rather than an instance.
- Class methods contain functionality that does not involve one instance.
- A class method can be called even if objects/instances do not exist.
- The new method that we call upon a class to create an object is an example
 of a class method.

Syntax:
- Class variables begin with the double sigil sign: @@
- Instance variables begin with a single sigil sign: @
- Class methods are prefixed with the self keyword.
- Be careful! In an instance method definition, self refers to the object.

=end

class Bicycle
 @@maker = "BikeTech"
 @@count = 0 # with this we can count how many bikes have been produced by the
 # company so far

 def self.description # the name of the method could be also Bicycle.description
   # but if the name of the class changes in the future, we will have to go
   # through every method and change its name. When we put self, we won't need
   # to do that as this approach is more flexible.
   "Hi there, I'm the blueprint for Bicycles. Use me to create a bicycle object!"
 end

 def self.count
   @@count # this will allow us to read the @@count variable
 end

 def maker # this method is the instance one so will be called on the object but
   # will expose the class variable!
  @@maker
  end

 def initialize
    @@count +=1 # will increment the count by 1
 end
end

puts Bicycle.description # we call class methods on the class itself
puts Bicycle.@@count
# if we want to acess class variable, it is
# impossible unitl we expose them (the same as with the instance variables)
b = Bicycle.new
p b.maker
a = Bicycle.new
c = Bicycle.new

p Bicycle.count # will return the number of all bike objects we have created,
# we couldn't track this only with the instance method as it does not know how
# many objects of the class we have. It is only reserved to each object and
# its state. We can do it only from the class level.
