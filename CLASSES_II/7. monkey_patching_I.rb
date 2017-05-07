=begin
Monkey patching offers to the process modifying or adding features to the
exisiting class. Even after we have a class definition we can later reopen it
and add new things e.g. new instance methods to the class definition. In fact,
Ruby is so flexible that it allows to make changes to its own exisiting classes
like hashes, strings or arrays.
=end

# e.g. we can add a new instance method to the Array class but we have to be
# careful here as if we define an instance method with a name that already
# exists within that class, we will overwrite it.

class Array
  def sum
    total = 0
    self.each {|element| total += element if element.is_a?(Numeric)}
    total
  end
# self refers to the array we will call the method on, e.g. later we will create
# an array [1, 2, 3] and self will refer to that.
end

p [1, "Hello", 2, false, 3, 4].sum # we can call this sum method on this array
# as we have validated this method and it's goinf to add only numeric objects,
# other objects will be omitted.

class String
def alphabet_sum
  alphabet = ("a".."z").to_a
  sum = 0
  self.downcase.each_char do |character|
    if alphabet.include?(character)
        numeric_value = alphabet.index(character) + 1 # we add 1 as Ruby starts
        # counting at 0 and we want the last character to have index position
        # number 26 not 25
        sum += numeric_value
  end
end
sum
end
end

puts "abc".alphabet_sum # we get 6 as a is 1, b is 2 and c is 3
puts "zzz".alphabet_sum # we get 78 which is 26 + 26 + 26
puts "Hello world".alphabet_sum
