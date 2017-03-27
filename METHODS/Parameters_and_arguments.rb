#Argument is an input to a method
def person(name)
  puts "#{name} is amazing"
  puts "#{name} is charming"
  puts "#{name} is talented"

end
#When calling the method we need to add the name as well to make it work,
#see below:
person ("Aga")
person ("Dave")
person ("Marta")
person "Pizza" # will work as well although it is without parenthesis
#we can just put the names in the quotes but the best practice is to put them
#as well in parenthesis
#If I have more that one argument in a method and when calling it I will
#provide only one, I'm going to get an error
puts
#Multiple arguments:

def animal(name, size)
 puts "this is #{name} and it's #{size}"
end
animal("cat", "small")
animal("tiger", "big")
animal("ant", "tiny") #we don't need to put p before calling the method as
#there is no computation
