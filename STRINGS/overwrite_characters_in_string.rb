thing = "rocket ship"
p thing[0]
p thing
thing[0] = "P" # 0 index position gets overwritten and "r" turns into "P"
p thing

thing[1] = "a"
p thing

thing[9] = "o"
p thing

fact = "I love blueberry pie"
fact[7, 4] = "rasp"
p fact

fact[7..10] = "blue"
p fact
fact[2..5] = "absolutely adore"
p fact

#case method deals with capitalization and lowecasing of the letters
puts "hello".capitalize #capitalizes only the first letter of a string
puts "heLLo".capitalize
puts "Hello".capitalize
puts "hello world".capitalize
puts "boris123".upcase
puts "blah blah blah".upcase

lowercase = "I'm patient"
uppercase = lowercase.upcase
p uppercase
puts "BORIS".downcase
puts "boRIS".swapcase #reverses the cases in a string
