def convert_to_euros(dollars)
  dollars * 0.95 if dollars.is_a?(Numeric)
end


def convert_to_pesos(dollars)
  dollars * 20.67 if dollars.is_a?(Numeric)
end

def convert_to_rupees(dollars)
  dollars * 68.13 if dollars.is_a?(Numeric)
end

p convert_to_euros(1000)
p convert_to_pesos(1000)
p convert_to_rupees(1000)
puts
# to avoid the duplication of a part of the method, we can try
# to consolidate all 3 methods into one:
def convert(dollars, currency)
  yield(dollars, currency) if dollars.is_a?(Numeric)
end
p convert(1000, "euros") {|dollars| dollars * 0.95}
p convert(1000, "pesos") {|dollars| dollars * 20.67}
p convert(1000, "rupees") {|dollars| dollars * 68.13}

# to refactor the above code:
to_euros = lambda {|dollars| dollars * 0.95}
to_pesos = lambda {|dollars| dollars * 20.67}
to_rupees = lambda {|dollars| dollars * 68.13}
puts

def convert_1(dollars, currency_lambda)
  currency_lambda.call(dollars) if dollars.is_a?(Numeric)
  # we call lambda in here
end
p convert_1(1000, to_euros)
p convert_1(1000, to_pesos)
p convert_1(1000, to_rupees)
puts
# because we used lambda above , we can use it also somewhere else:
p [1000, 2000, 3000].map(&to_pesos)
