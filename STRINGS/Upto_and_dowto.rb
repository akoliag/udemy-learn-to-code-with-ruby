#5.downto(1)# will count  from 5 down to 1
5.downto(1) { |i| puts "Countdown: #{i}"}
# the name "i" variable is very common while coding
#the block variable is gone as soon as the block is being ececuted
puts
5.downto(0) do |current_number|
  puts "We are currently on #{current_number}"
  puts "Hooray!"
end

puts "LIFTOFF"
# dwie rozne metody na blocki:
10.upto(17) {|i| puts "Count up: #{i}"}

10.upto(17) do |i|
  puts "Gonna count up to: #{i}"
  puts "So we can go now"
end
# with .times we always start with 0 while with .downto and upto we always start
#with a given number and finish with a given number; these methods are used genrally
#with blocks

#BONUS: The step.method also used with bklocks
#1.step(100, 5) the step method takes 2 arguments. The first argument is the number that
#we want to go to, the second is the step - the number by which we want to increment
#the first numer to get from 1 do 100
1.step(100, 5) {|number| puts number}
puts
0.step(100, 5) {|number| puts number}

puts

0.step(85, 7) do |number|
  puts "Alright, so let's go up by 7 again"
  puts "I'm now on #{number}"
end
