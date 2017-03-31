fives = [5,10, 15, 20, 25, 30, 35, 40]
odds = []
evens = []

#fives.each do |number|
#  if number.even?
#    puts number
#  end
#end

#fives.each do |number|
#  if number.odd?
#    odds << number #adding odds to the array
#  end
#end

#p odds
#fives.each do |number|
#  if number.even?
#    evens << number #adding evens to the array
#  end
#end

#p evens

#challenge by Boris: to combine both in one:

fives.each do |number|
  if number.odd?
    odds << number #adding odds to the array
  elsif number.even? #adding evens to the array
    evens << number
  end
end

p odds
p evens


#Code refactoring:
#OPTION 1:
#fives.each do |number|
#  number.even? ? evens << number : odds << number
#end

#OPTION 2:
#fives.each {|number| number.even? ? evens << number : odds << number}


#CHALLENGE no. 2: to return the same using a method
def print_evens_and_odds(array)
  evens = []
  odds = []
  array.each {|number| number.even? ? evens << number : odds << number}
  p evens
  p odds
end
print_evens_and_odds(fives)
print_evens_and_odds([1, 89, 17, 14, 96, 32, 68, 43, 10])
