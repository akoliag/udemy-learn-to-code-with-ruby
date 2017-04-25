ARGV.each do |argument|
  number = argument.to_i # converting to_i as using ARGV we get a string
  puts "The square of #{number} is #{number**2}"
end
