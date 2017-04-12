p  ["1", "2", "3"].map {|number| number.to_i}

# instead of using the above, we may put to_i in the brackets as an argument
# but to make it work we need to precede it with the colon to create a symbol
# (as only to_i doesn't say anything to Ruby in this case) and then precede it
# with the ampersand, as well.
p  ["1", "2", "3"].map(&:to_i) # we convert this method to a proc
p [10, 14,19].map(&:to_s)
puts
p [1, 2, 3, 4, 5, 6, 7, 8, 9].select { |number| number.even?}
p [1, 2, 3, 4, 5, 6, 7, 8, 9].select(&:even?)

p [1, 2, 3, 4, 5, 6, 7, 8, 9].reject(&:odd?)
