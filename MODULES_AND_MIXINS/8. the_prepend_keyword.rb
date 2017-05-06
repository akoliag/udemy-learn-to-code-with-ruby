=begin
The prepend keyword places the module method before the instance method that
is defined in the class.
It reverses the order of the lookup path between the module and the class.

=end

module Purchaseable
def purchase(item)
    "#{item} has been purchased!"
end
end

class Bookstore
  prepend Purchaseable # with this prepend keyword module method has priority
  # over the class method
  def purchase(item)
    "You bought a copy of #{item} at the bookstore!"
  end
end
p Bookstore.ancestors # Purchaseable moved to the first place in the order
bn = Bookstore.new
p bn.purchase("Little Mary") # module method is called out and returned in here.
