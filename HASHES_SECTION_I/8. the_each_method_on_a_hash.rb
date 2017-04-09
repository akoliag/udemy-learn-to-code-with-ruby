# In the hash this method iterates over every key-value pair.

capitals = {alabama: "Montgomery", alaska: "Juneau", arizona: "Phoenix",
            arkansas: "Little Rock"}
# if it comes to the hash and each method, in the block we need to provide
# two block variables: one representing the key and the second one representing
# the value:
capitals.each do |state, capital|
  puts "Querying hash..."
  puts "The capital od #{state} is #{capital}."
end
# each_pair method is identical to each but it's not used a lot. The each
# method is more common.
puts
# If we provide only one variable with the hash block, we're going to get
# an array:
capitals.each do |guess|
  puts "Querying hash..."
  p guess
end

puts
# If we want to get only the key or only the value, we can access them
# by square brackets and index postion no.
 capitals.each do |guess|
    p guess[0] # we get only the keys
 end
 puts
 capitals.each do |guess|
    p guess[1] # we get only the values
 end
puts
# we can also provide 2 variables but simply not utilize one of them:
capitals.each do |state, capital|
  p capital
end
puts
capitals.each do |state, capital|
  p state
end
