p 1.next
p 1.to_s
p 10.odd? #metoda zawiera znak? na końcu
p 10.even?
# ood? and even? methods are not available on floating numbers


#Equality/Comparison operator
# == znak operatora czyli 2x znak rownosci
p 10 == 10
p 10 == 20

a = 10
b = 5
c = 10
p a == c
p a == b
p c == b
p "5" == 5 #porownanie 2 roznych obiektow wiec false
p 5 == 5
p "5" == "5"
p 5 == 5.0 #to jest true poniewaz oba objekty to  cyfry
p 5.to_f == 5.0
p 5 == 5.0.to_i

#Inequality operator
#!= znak nierownosci
p 10 != 5
p 10 != 10
p "Hello" != "Goodbye"
p "Hi" != "Hi"
p "Hello".downcase != "heLLO".downcase #dla pewnosci formy zapisu przywołujemy downcase
p "123" != 123
