=begin

These two methods are exactly the same and commonly used in Ruby.
They are used whenever we iterate over an array and we need to keep track
of some kind of operation or computation from all elements prior to
the one that we're currently on e.g. cumulative sum:
a, b, c = a + a+b + a+b+c - see below:

=end

# [10, 20, 30, 40].reduce(0) # 0 argument specifies the starting value
# pevious represents the result of the previous calculation
# current represents the current element I'm on

result = [10, 20, 30, 40].reduce(0) do |previous, current|
puts "The previous value is #{previous}"
puts "The current value is #{current}"
  previous + current
end

p result

puts

result_1 = [15, 25, 35, 45].inject(0) do |previous, current|
puts "The previous value is #{previous}"
puts "The current value is #{current}"
  previous + current
end

p result_1

puts
# Rolling product: going through the below array and multiplying all
# the values together:
product = [3, 4, 5, 6, 7].reduce(1) do |previous, current|
  puts "The previous value is #{previous}"
  puts "The current value is #{current}"
    previous * current
end

p product
puts

product_1 = [6, 7, 5, 6, 7].inject(1) do |previous, current|
  puts "The previous value is #{previous}"
  puts "The current value is #{current}"
    previous * current
end

p product_1
