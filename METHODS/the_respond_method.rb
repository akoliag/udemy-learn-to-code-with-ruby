#This method allows us to check whether an object responds to a given method
#or not. In other words with this method we may test a given method
#on the specific object:

num = 1000
p num.respond_to?("next")
# in the brackets we provide the method we want to test
p num.respond_to?("class")
p num.respond_to?("odd?")
p num.respond_to?("even?")
p num.respond_to?("respond_to?")
p num.respond_to?("length")


if num.respond_to?("next")
  p num.next
end

puts "Hi there".respond_to?("length")
puts "Hi there".respond_to?("upcase")
puts "Hi there".respond_to?("swapcase")
puts "Hi there".respond_to?("odd?")
puts "Hi there".respond_to?(:length)
puts "Hi there".respond_to?(:size)
puts "Hi there".respond_to?(:class)
#colon in the brackets above means symbol. When using it, we don't need
#to use quotes in the brackets. Thanks to that this won't take a lot of memory
