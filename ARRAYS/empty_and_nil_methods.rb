p [1, 2 ,3].empty? #returns true if the array is empty
p [].empty?
p [].length == 0
p [false, false, false].empty?
p [nil, nil].empty? #returns false as the array is not empty
#there's a nil value in here

#nil? method is available on every Ruby object but returns true
#only if it's called on an object of the nil class
p [false, true, false, false].nil?
p [].nil?
letters = ("a".."j").to_a #converting to an array
p letters

character = letters[5]
p character
p character.nil?

character = letters[55]
p character
p character.nil? #returns true as there is no index position
#no. 55 in the array
