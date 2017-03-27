#Ternary because  it has three different components/parts. After the first part
#we put a question mark meaning is the first part true? And  then we put the
#output of yes and the output of no which are esparated by colon.
if 1 < 2
  puts "Yes, it is!"
else
  puts "No, it isn't!"
end

#Ternary example (it means exactly the same as the above one):
 puts 1 < 2 ? "Yes, it is!" : "No it isn't!"
 #The statement: 1<2 is followed by the question mark which means - it this true
 #or not? If yes, Ruby will take the first string. If not, the second one will
 #be taken. Both strings are separated by colon which is an integral part
 #of this ternary operator
 if "yes" == "yes"
   puts "These two are equal"
 else
   puts "These two are not equal"
 end
puts "yes" == "yes"? "These two are equal" : "These two are not equal"

# We can use a ternary operator in a method:

def odd_or_even(number)
  number.odd? ? "The number is odd" : "The number is even"
end

puts odd_or_even(6)
puts odd_or_even(5)

#Exercise:
pokemon = "Pikachu"
puts "pokemon" == "Charizard"? "Fireball" : "That is not Charizard"

def pokemon_name(pokemon)
  "pokemon" == "Charizard"? "Fireball" : "That is not Charizard"
end
puts pokemon_name("Pikachu")
