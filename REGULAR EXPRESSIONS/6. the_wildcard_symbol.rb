phrase ="The Ruby Programming Language version 2.3.3 is amazing!"

puts phrase.scan(/./) # we get all characters
puts phrase.scan(/.am/) # we get any occurrence of any character followed by
# the sequence am
puts phrase.scan(/.ing/)
puts phrase.scan(/a.e/) # we get any combination of a character "a" followed by
# any character followed by the character "e"
puts phrase.scan(/ng/)
puts phrase.scan(/.ng/)
puts phrase.scan(/R.b./)
puts phrase.scan(/\d.\d.\d./) # extracts the digits
