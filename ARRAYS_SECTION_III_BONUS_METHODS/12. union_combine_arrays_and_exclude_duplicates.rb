=begin

A union combines several arrays into one and removes duplicates from it.
It's called by a vertical pipe (see below)

=end

p [1, 2, 3] | [3, 4, 5] # combining 2 into 1 and excluding the duplicates
p [ 11, 12, 13, 13] | [14, 14, 15, 16,] | [17, 18, 19, 20]



a = [25, 06, 88, 88]
b = [14, 05, 84, 19]

def custom_union(arr1, arr2)
  arr1.dup.concat(arr2).uniq # not to modify the original array we call the dup
  # which creates a duplicate of an array, then we do concatenation and remove
  # all duplicates by callinga a uniq method.
end

p custom_union(a, b)
