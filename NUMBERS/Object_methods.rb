p 20.between?(10, 30)
p 20.between?(30, 50)
p 1.2.between?(1.0, 1.5)
#parameters to placeholder dla prawdziwego argumentu,
#ktory dajemy w danym obliczeniu

#Float methods:
p 10.5.floor #zaniza do dołu czyli do 10
p 10.5.floor.class
p 10.5.ceil #zawyza do góry czyli do 11
p 10.5.ceil.class
puts
#metoda.round moze miec argument, ale nie jest to must
p 3.14159.round #ponizej 0,5 zanisza do dolu
p 3.6.round  #powyzej 0,5 zawyza do gory
p 3.14159.round(2) #zaokragla do 2 miejsc po przecinku
p 3.14159.round(4) #zaokragla do 4 miejsc po przecinku


#abs method gives us the distance a number is from 0

p 35.67.abs
p -35.67.abs
p 50.abs
p -12345.98.abs
