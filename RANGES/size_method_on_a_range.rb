#size method on a range returns the number of elements that are in this
#range
numbers = 143..769
p numbers.size
# Size methods works only on a numeric range. If we use a size method
#on an alphabetical range we get a nil

letters = "a".."f"
p letters.size #(see Atom runner)
