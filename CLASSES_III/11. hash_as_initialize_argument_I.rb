# using the hash as an argument when we call a method we can put arguments
# in any order and it will assign the values properly. If we don't use a hash
# and mistaken the order of arguments, wrong result will be returned.

class Candidate
 attr_accessor :name, :age, :occupation, :hobby, :birthplace
 def initialize(details)
    @name = details[:name] # details hash has name key
    @age = details[:age]
    @occupation = details[:occupation]
    @hobby = details[:hobby]
    @birthplace = details[:birthplace]
 end
end
info = {name: "Mr. Smith", age: 53, occupation: "Banker", hobby: "Fishing",
        birthplace: "Kentucky"}

senator = Candidate.new(info)
p senator.occupation
p senator.age
p senator. hobby
p senator.name
