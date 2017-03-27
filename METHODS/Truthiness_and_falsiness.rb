#The only falsy values in Ruby are false and nil, besides these two, everything
#in ruby in true e.g. integers, floating, negative numbers ranges like
# 5..9, hash etc.

#If elsif statement
color = "Green"
if color == "Red"
  puts "That's not my favourite one"
elsif color == "Green"
  puts "That's my favourite one!"
elsif color == "Yellow"
  puts "Yay for yellow"
end

number = 55
if number < 25
  puts "That's a low number"
elsif number < 50
  puts "That's a number in the middle"
elsif number >= 55
  puts "That's my number"
end
