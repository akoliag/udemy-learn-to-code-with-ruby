#empty strings are strings without any characters '
empty = ""
p empty
p empty.length
 name = "Aga"
p name.class

#Multiline strings czyli Here Documents
#po podwojnym znaku <<wpisujemy co chcemy i to samo wpisujemy
#ponizej, ale juz bez tego znaku i to wszystko wyznacza
#a multiline string
words = <<MLS
This is a multilinestring
when it is output.
The tabs wil also be preseved.
Just you watch.

Bye

MLS

p words #pokazuje po code executiuon also line breaks
print words
puts words

#Escape characters
# wszystkie ponizsze kombinacje sa dozwolone poza ostatnia
# z komentarzem
puts "Hello"
puts 'Hello'
puts "Hello 'Rita'"
puts 'Hello "Rita"'
#puts "Hello "Rita"" nie mozna uzyc dwoch takich samych
#quotes do oznaczenia cytowania w stringach bo zwróci nam
#błąd
# wtakiej sytuacji przed kazdym takim samym quotes dajemy \
#i \ mowi rubiemu ze ma zignorowac ten znak, ktory wystepuje
#bo backslash czyli "\", an example below:
puts "Juliet said \"Goodbye\" to Romeo" #this is correct

#Line breaks
# new line wprowadzamy \n i wprowadza sie go bez zadnych spacji!!!

result = "Let's add a line break\nright here"
puts result
p result #p oddaje wszystkie znaki dodatkowe, ktorych nie widac
#przy komendzie puts

#tab = indented sapce at the beginning skrót \t
puts "\tInsert a tab right here"
puts "Insert a tab right here"
