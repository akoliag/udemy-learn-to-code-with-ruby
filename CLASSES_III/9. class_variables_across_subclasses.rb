class Product
  @@product_counter = 0

  def self.counter
    @@product_counter
  end

  def initialize
    @@product_counter += 1 # thanks to that we can keep tracking how
    # many products we've created.
  end
end

class Widget < Product
  @@widget_counter = 0

  def self.counter
    @@widget_counter
  end

  def initialize
    super # thanks to that any time the widget is created, the number
    # of products is going to be incremented
    @@widget_counter += 1
  end
end

class Thing < Product
  @@thing_counter = 0

  def self.counter
    @@thing_counter
  end

  def initialize
    super # thanks to that any time the widget is created, the number
    # of products is going to be incremented
    @@thing_counter += 1
  end
end

a = Widget.new
b = Widget.new
puts Widget.counter
puts Product.counter
c = Thing.new
d = Thing.new
e = Thing.new
puts Thing.counter
puts Product.counter
