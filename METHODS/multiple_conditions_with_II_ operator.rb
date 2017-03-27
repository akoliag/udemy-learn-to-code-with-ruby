# Or operator
budget = 5
price = 10
mood = "Happy"

if budget > price || mood == "Happy"
  puts "I'm going to buy that"
end

# II means or and in the above-mentioned example or the budget must be
#grater that price or the mood must equal "Happy"
if budget > price || price < 8 || mood == "Happy"
  puts "I'm going to buy that"
end
