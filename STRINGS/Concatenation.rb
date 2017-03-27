#Concatenation:

trait = "small "
trait_1 = "black "
animal = "cat"

p trait + trait_1 + animal

p trait.concat(trait_1 + animal) # .concat nadpisuje pierwszy argument

p trait << trait_1 << animal # << wywołuje konkatenacje

first_name = "John "
last_name = " Gruzinsky"

p first_name += last_name # first_name = first_name + last_name
# powyzsze rownanie rowniez nadpisuje

colour_1 = "white"
colour_2 = "black "
p colour_1.prepend(colour_2) #zmienia kolejnosc argumentów i rowniez
#nadpisuje pierwszy argument

p colour_1 # przykład nadpisania w oknie runnera

p animal[2, -2].nil?
