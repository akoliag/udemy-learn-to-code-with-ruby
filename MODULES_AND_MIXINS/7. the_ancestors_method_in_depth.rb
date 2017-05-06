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
  def purchase(item)
    "You bought a copy of #{item} at the bookstore!" # when we create a method
    # in the class body with the same name as a method in module, Ruby will
    # use the method from the class body as it is closer to the object
    # definition. The module method is going to be overwritten by the
    # class body method.
  end
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

p Bookstore.ancestors # this returns an array representing the order in which
# Ruby is going to look for a method when the object is create from
# a Bookstore class.
bn = Bookstore.new
p bn.purchase("1984") # in this order Ruby will look for the method:
# [Bookstore, Purchaseable, Object, Kernel, BasicObject]
