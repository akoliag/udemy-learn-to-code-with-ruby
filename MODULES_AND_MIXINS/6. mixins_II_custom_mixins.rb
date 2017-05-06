=begin

What is a mixin?
- A mixin is simply a module that injects additional behaviour into a class.
- Mixins allow us to mimic inheritance from more than one class.
- A class that includes a module has access to its methods and constants.
- constants and methods mixed into a class do not need to be prefixed with the
 module name.

MODULES (MIXINS) vs. INHERITANCE:
- Class inheritance should be used for an is_a relationship.
- For example, an Array is a type of Object. A Fixnum is a type of Integer.
- Modules should be used for a has-a relationship. It adds functionality.
- For example, a String has a Comparable feature set.

THE METHOD LOOKUP PATH is the path that Ruby will follow in order to find out
how to call a method or which method you're going to call:
- the order that modules are included in a class matters.
- Ruby looks at the last module included in the class first.
- If multiple modules mix in methods with the same name, the last module included
 in the class definition will be used first.
- Ruby will throw an error if the method is not found in the class, the module
 or any superclasses.

=end

module Purchaseable
def purchase(item) # we do not include in here self keyword as we don't want to
    # call purchaseable.purchase. We want this method to be injected or included
    # into our class definition. We want the method to be available on the
    # objects created from the class, not to be called directly on the module.
    "#{item} has been purchased!"
end
end

class Bookstore
  include Purchaseable
end

barnes_and_noble = Bookstore.new
p barnes_and_noble.purchase("Atlas Shrugged")
# even though the purchase method is not define within the class body,
# it is still available as it is imported from the Purchaseable module
# that has been included in the Bookstore class.
# Firstly, Ruby looks for this method in the class body, there is no method
# like that so it looks in the included module.
class Supermarket
  include Purchaseable
end

shoprite = Supermarket.new
p shoprite.purchase("Ice cream")
