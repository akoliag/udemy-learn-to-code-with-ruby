# Parallel Variable Assignment
# a  = 10
# b = 20
# c = 30
a, b, c = 10, 20, 30 #mozna przypisac varable w taki sposob zamiast rozdzielac na linie
# a, b, c = 10, 20, 30 to profesjonalny zapis kodu w ruby
p a
p b
p c
p a, b, c
puts a, b, c
print a, b, c # jak zwykle brak spacji przy użyciu print

#Swapping variables
a, b = 1, 2
p a, b
p a
p b
p a, b
a, b = b, a # swapping variables example
p a, b
#Intro to Object Method
p "Hello Aga".length #liczy ilisc znakow lacznie ze spacja
p "hello aga".upcase #oddaje zapis w duzych literach
p "HELLO AGA0".downcase
foo = "hello world"
p foo.length
p foo.upcase
p 10.next #.next increment a number by 1
p -1.next
puts "Hello Aga".inspect
p "Hello Aga"
