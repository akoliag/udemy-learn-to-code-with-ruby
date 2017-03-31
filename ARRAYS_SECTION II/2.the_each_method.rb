#this method iterates over every single element in order. In order to
#do sth with .each method we're going to tell the each method what
#we want it to execute and we do that through a block.
candies = ["Milky Way", "Hard candy", "Airheads"]
candies.each do |candy|# every time we will go over a candy
  puts "I love eating #{candy}"
  puts "It tastes so good"
end
#whatever we put in the body of the block is what happens to each
#element of the array

puts
names = ["bo", "moe", "joe"]
names.each {|name| puts name.upcase}

puts
[1, 2, 3, 4, 5].each do |num|
  square = num*num
  puts "The square of the #{num} is #{square}."
end
#we don't have to store the elemets in the variable. It makes things easier
#but we don't have to do that.

puts
