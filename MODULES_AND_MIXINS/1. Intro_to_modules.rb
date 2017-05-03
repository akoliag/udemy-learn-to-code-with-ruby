=begin

INTRO TO MODULES:

What is a module?
- A module is a toolbox or container of methods and constants.
- Module methods or constants can be used as needed.
- Modules create namespaces for the methods with the same name.
- Modules cannot be used to create instances.
- Modules can be mixed into classes to add behavior.

Syntax and Style:
- Module names are written in UpperCamelCase.
- Constants in module should be written in ALL CAPS.
- Access module methods with the dot operator (.).
- Access module constants with the :: symbol.
- The :: symbol is called the scope resolution operator. We use it to extract
  a specific constant from a module. It determines the scope - it says
  in what environment am I going to be looking for this constant?

=end

module LengthConversions # in here it is a toolbox of 3 methods
  # we can e.g. implement this module in any other program
WEBSITE = "https://www.angelo.edu/dept/agriculture/faculty/scott_conversions.php"

def self.miles_to_feet(miles) # we want to call this method on self
# This self keyword defines this method on the module such that we can says
# LengthConversions.miles_to_feet and have access to this module later in the
# program. Using self keyword is the same as writing LengthConversions.miles_to_feet
# but the reason we don't do it is that e.g. if the name of the module changes later
# we will have to go through the whole code looking for this module name to change it.
# If we use self, we won't have to do that.
miles * 5280
end

def self.miles_to_inches(miles)
  feet = miles_to_feet(miles) # we can call another method within a module
  feet * 12
end

def self.miles_to_centimeters(miles)
 inches = miles_to_inches(miles)
 inches * 2.54
end

end

puts LengthConversions:: WEBSITE # we can access the info that is in this constant
puts LengthConversions.miles_to_feet(100)
puts LengthConversions.miles_to_inches(100)
puts LengthConversions.miles_to_centimeters(100)
