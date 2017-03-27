#Single quates and Double quotes

#a line break does not work with single quotes, see below:

puts "Hello\nAga"
puts 'Hello\nAga'# z single quotes rubi trakuje ten zapis jako
#część stringa


#string interpolation również nie działa z single quotes

phrase = "Hello"
puts "#{phrase}" # odwołuje sie do zawartosci phrase
puts '#{phrase}' # oddaje to co dosłownie jest napisane

puts
#Equality and Inequality operators with strings
a, b, c =  "Hello", "hello", "Hello"
p a == "Lion"
p a != "Lion"
p a == b
p a == c

puts

p "Apple" < "Banana" # b wystepuje po a w alfabecie i mała/duz lietra
#rowniez ma znaczenie przy tego rodzaju porównaniach
