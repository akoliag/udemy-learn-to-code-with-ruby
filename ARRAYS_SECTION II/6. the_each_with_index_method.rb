colors = ["red", "blue", "green", "yellow", "black"]
colors.each do |color|
  puts "Moving on to the next one."
  puts "The next color is the #{color} one."
end

puts
#using .each_with_index method we get the index position of an element:
colors.each_with_index do |color, index|
  puts "Moving on to the index number #{index}."
  puts "The next color is the #{color} one."
end
#this method requires one more block variable which represents the index
#position of a given element.

#Challenge by Boris:
#Write a loop that iterates over a numeric array
#Output the PRODUCT of each number and its index position
puts
fives = [5, 10, 15, 20, 25]
fives.each_with_index do |five, index|
  puts "The current value is #{five} at  index #{index}!"
  puts five * index
end
