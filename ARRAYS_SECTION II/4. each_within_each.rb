shirts = ["striped", "plain white", "plaid", "band"]
ties = ["polka dot", "solid colour", "boring"]
shirts.each do |shirt|
  ties.each do |tie|
    puts "OPTION: A #{shirt} and a #{tie} tie."
 end
end
#this nested .each method checks all combinations of provided shirts and ties
