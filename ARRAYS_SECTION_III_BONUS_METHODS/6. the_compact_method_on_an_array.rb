=begin
This method removes all the nil values from the array.
=end
p [1, 2, 3]. compact

p [1, 2, nil, 3, nil, false, 4]. compact # false is not a nil value so it
# does not get removed from the arry
p []. compact # the same applies to the empty array as empty does not mean nil
p [nil]. compact

sports = ["bseball", nil, "football", nil, "soccer", nil]
p sports.compact
p sports
p sports.compact! # changes the array permanently

colors = ["black", "red", "white", "green", nil, "blue", nil, "rose"]

def custom_compact(array)
    final = []
    array.each {|element| final << element unless element.nil?}
    final
end
p custom_compact(colors)
