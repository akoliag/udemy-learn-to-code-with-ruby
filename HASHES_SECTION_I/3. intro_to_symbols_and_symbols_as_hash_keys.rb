=begin
Symbols are very commonly used as hash keys instead of strings as they carry
a lot less memory. Symbols are written with the colon sign ":"

=end
:name # name represents a Symbols
p :name
p :name.class
p :name.methods #returns all methods available on a symbol
p :name.methods.length # returns the exact number of methods available
# on a Symbol
"name"
p "name"
p "name".class
p "name".methods
p "name".methods.length # 170 methods available on a string while 79 available
# on a symbol - that is why a symbol takes less space in the memory

person = {:name => "Boris",
          :age => 25,
          :handsome => true,
          :languages => ["Ruby", "Python", "JavaScript"]}

p person[:name]
p person[:handsome]
p person[:languages]

# more frequent way of using a symbol:
person = {name: "Boris",
          age: 25,
          handsome: true,
          languages: ["Ruby", "Python", "JavaScript"]}
p person[:languages] # while extracting we use colon first
