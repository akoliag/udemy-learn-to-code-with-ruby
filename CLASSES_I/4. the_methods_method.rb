fixnum_methods = 5.methods.sort
float_methods = 3.14.methods

puts fixnum_methods &  float_methods # & returns methods common to both objects
puts
puts fixnum_methods -  float_methods # only methods available on the fixnum
puts
puts float_methods - fixnum_methods # only methods available on the float
puts

array_methods = [1, 2, 3].methods.sort
hash_methods = {key: "Value"}.methods.sort
puts array_methods & hash_methods
