=begin
The superkey word will help us customize the design of our subclass
by keeping some of the functionalities from the superclass but still
adding some new functionalities to the subclass.
=end
class Employee


attr_accessor :age
attr_reader :name
 def initialize(name, age)
   @name = name
   @age = age
 end

 def introduce
   "Hi, my name is #{name} and I'm #{age} years old."
 end
end

boris = Employee.new("Boris", 25)


class Manager < Employee
# if we want to add another instance variable for a given subclass
# we need to create a subclass initialize method and define this
# variable in it. To avoid repeating writing again @name and @age
# instance variables, we call the super keyword and list them as arguments
# and they will be assigned with values as they are in the superclass
# inititialize method.
 attr_reader :rank # enabling to read the rank
  def initialize(name, age, rank)
    super(name, age)
    @rank = rank
  end
  def yell
    "Who's the boss? I'm the boss!"
  end
# if we want to add sth to the introduce method defined in the superclass
# we call the super keyword in the method body and it will bring the value
# of the superclass method. Then we add additional input.
  def introduce
    result = super
    result += " I'm also a manager."
    result
  end
end

sally = Manager.new("Sally", 42, "Senior Vice President")
# we need to provide 3 arguments in here as we have defined one more
# instance variable for the Manager subclass.
p sally.rank
p sally.name
p sally.age
p sally.introduce # this is going to return the combination of the superclass
# introduce method and the part we have added in the subclass introduce
# method.
rick = Employee.new("Rick", 45) # Employee class has no rank instance
# variable defined so we provide only 2 agruments.
p rick. introduce # this calls only the introduce method defined
# within the superclass method.
