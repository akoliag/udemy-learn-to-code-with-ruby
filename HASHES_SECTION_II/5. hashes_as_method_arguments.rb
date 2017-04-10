def calculate_total_1(price, tip,tax)
  tax_amount = price * tax
  tip_amount = price * tip
  price + tip_amount + tax_amount
end

p calculate_total_1(24.99, 0.18, 0.07)


p calculate_total_1(0.18,24.99, 0.07) # if we provide the arguments
# in the wrong order, we get the wrong calculation result, to avoid this
# we may provide a hash argument

bill = {price: 24.99, tip: 0.18, tax: 0.07}
new_bill = {tip: 0.18, tax: 0.07, price: 24.99}
def calculate_total_2(info) # only 1 argument which is a hash
  tax_amount = info[:price]* info[:tax]
  tip_amount = info[:price]* info[:tip]
  info[:price] + tax_amount + tip_amount
end
p calculate_total_2(bill) # in here the approach is more dynamic and
# flexilbe as there is no difference in what kind of order we put
# the arguments in the hash
p calculate_total_2(new_bill) # the method still works properly although
# we have changes the order of the arguments in the hash
p calculate_total_2({tax: 0.05, tip: 0.30, price: 9.99}) # whenever a hash
# is the last argument to a method we can exclude the curly braces around
# the hash, see below:
p calculate_total_2(tax: 0.05, tip: 0.30, price: 9.99)
