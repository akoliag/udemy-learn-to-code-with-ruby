# using the hash as an argument when we call a method we can put arguments
# in any order and it will assign the values properly. If we don't use a hash
# and mistaken the order of arguments, wrong result will be returned.

class Candidate
 attr_accessor :name, :age, :occupation, :hobby, :birthplace
 def initialize(details ={}) # assigning an empty hash default argument
   # will avoid triggering an error and will return nil when the user
   # forgets to provide the argument creating a new class object
    defaults = {name: "Mary", age: 23, occupation: "Student", hobby: "Tennis",
                birthplace: "USA"}
    defaults.merge(details) # this will merge defaults and details hashes
    # and whenever the key is repeated, the value will be overwritten,
    # if the user forgets to provide one value, the value from
    # default hash will be provided in this place.
    @name = defaults[:name] # details hash has name key
    @age = defaults[:age]
    @occupation = defaults[:occupation]
    @hobby = defaults[:hobby]
    @birthplace = defaults[:birthplace]
 end
end
info = {name: "Mr. Smith", age: 53, occupation: "Banker", hobby: "Fishing",
        birthplace: "Kentucky"}

senator = Candidate.new(info)
p senator.occupation
p senator.age
p senator. hobby
p senator.name
