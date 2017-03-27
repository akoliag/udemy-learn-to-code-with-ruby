#Statement modifiers:
#it serves as a kind of reducer of line in different Statements but should not
#be used in complex methods as may cause confusion
#Example:
number = 5000
verified = true
if number > 2500 && verified
  puts "Huge number"
end

puts "Huge number" if number > 2500 && verified
#when using modifier, we put the output first and then the condition
#(see above). The result is the same as using the standard if Statement

x = 8
unless  x > 10
  puts " x is NOT grater than 10"
end

  puts " x is NOT grater than 10" unless  x > 10
