#Finding out if the object is made of specific class
puts 1.is_a?(Bignum) #in the brackets we provide the class we want to check
puts 1.is_a?(Array)
puts 1.is_a?(String)
puts 1.is_a?(Fixnum)
puts [1, 2].is_a?(Fixnum)
puts [1, 2].is_a?(Float)
puts [1, 2].is_a?(Array)
#classes follow inheritance hierarchy which means that they inherit from
#another classes inheriting from another class on top. It's like
# a pyramid.

#Ruby hierarchy:
#-- BasicObject
#-- Object
#every object comes from the class that is going to inherit from
#BasicObject or Object e.g Integer inherits form Fixnum and Bignum

#--      BascicObject
#--         Object
#
#--         Integer
#--    Fixnum    Bignum
#Every time we call .is_a? method, it is going to return true if the class
# we pass as an argument is represented anywhere in this hierarchy.
#see below:
p 1.is_a?(Fixnum)
p 1.is_a?(Integer)
p 1.is_a?(Object)
p 1.is_a?(BasicObject)
#in all cases we get true as 1 is all: fixnum, Integer, Object
#and BasicObject
p [1,2].is_a?(Array)
p [1,2].is_a?(Object)
p [1,2].is_a?(BasicObject)
