=begin
A mixin is simply a module added to a class. Whenever we define a class
and we want to add a certain functionality to it, we can do that in a form
of a module whose methods and constants are made available to that class.

WHY MIX IN MODULES TO CLASSES:
- Different classes need similar functionalities.
- For example, String and Numeric both need <, <=, >, >= and ==.
- However, neither class can be represented as the subclass of the other.
- Duplication of methods across classes violates the DRY princple.

E.g. Numeric and String have some functionalities in common but we cannot
model the relationship between these two objects. They are just not the same
thing. What we can do is to define this comparable functionality in a separate
module and then mix or add that module to this class definition. That way, we
only need to write the module once but it is allowed to be used in object
created from either of these two classes. Ruby's comparable module is built-in
by default so we can use it in our custom clases.

=end
class OlympicMedal
# Comparable built-in module will allow us to perform the following operations:
# <, <=, >, >=, == and between? but we need to clarify Ruby what exactly we want
# to compare. In order to do that we have to define the method using the
# spaceship operator.
include Comparable # importing built-in comparable module; if we include it in
# the method, we need to define the spaceship operator method or sth similar
# so that Ruby knows what and how to compare objects.

MEDAL_VALUES = {"Gold" => 3, "Silver" => 2, "Bronze" => 1}

attr_reader :type # exposing @type instance variable

def initialize(type, weight)
  @type = type # we need to expose it by getter method in order to be able to
  # check it
  @weight = weight
end

def <=> other
if MEDAL_VALUES[type] < MEDAL_VALUES[other.type]
  -1
elsif MEDAL_VALUES[type] == MEDAL_VALUES[other.type]
  0
else
  1
end
end
end

bronze = OlympicMedal.new("Bronze", 5)
silver = OlympicMedal.new("Silver", 10)
gold = OlympicMedal.new("Gold", 3)
puts bronze > silver
puts bronze < silver
puts gold >= silver
puts gold <= bronze
puts silver != bronze
puts silver == bronze
puts silver.between?(bronze, gold)
