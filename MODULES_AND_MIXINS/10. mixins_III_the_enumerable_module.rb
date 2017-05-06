=begin
Enumerable is another Ruby built-in mixin.
=end
class ConvenienceStore
  include Enumerable # it's a Ruby built-in module so we don't need to define it
  attr_reader :snacks # enabling to read it

  def initialize
    @snacks =[]
  end
def add_snack(snack)
  snacks << snack
end

# Enumerable by itself is not gonna work as it doesn't know how and what to
# enumerate. To make it work we need to define each method and specify in it
# how we want to iterate and over what.
def each
  snacks.each do |snack| # we can iterate over snacks with the each as it is
    # an array
    yield snack
  end
end
end
bodega = ConvenienceStore.new
bodega.add_snack("Burrito")
bodega.add_snack("Slim Jims")
bodega.add_snack("Tortilla")
p bodega.snacks # we can output it thanks to the attr_reader used above
bodega.each {|snack| puts "#{snack} is delicious!"}
p bodega.any? {|snack| snack.length > 10} # we don't need to define this
# method as it's included in the Enumerable module. When we call it, Ruby
# first checks in the class methods and if there is no luck it scans the
# module. All below methods are built-in the Enumerable module:
p bodega.all? {|snack| snack.length > 3}
p bodega.map {|snack| snack.upcase}
p bodega.select {|snack| snack.downcase.include?("j")}
p bodega.reject {|snack| snack.upcase.include?("J")}
p bodega.sort
p bodega.first
