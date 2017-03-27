#Calling a method form another method or interpolated string:

def add (a, b)
  a + b
end

def subtract (a, b)
  a - b
end

def multiply (a, b)
  a * b
end
#a method can call another method when they are in the same scope. In this case
#it will work as the scope in here is the whole programme

def calculator(a , b, operation = "add")
  if operation == "add"
    add(a, b)
  elsif operation == "subtract"
    subtract(a, b)
  elsif operation == "multiply"
    multiply(a, b)
  else
    "That's not a math operation, genius!"
  end
end

p calculator(7, 4, "add")
p calculator(7, 4)
p calculator(10, 20, "subtract")
p calculator(10, 20, "multiply")
p calculator(10, 20, "divide")

#interpolation example:

def calculator(a , b, operation = "add")
  if operation == "add"
    "The result of adding is #{add(a, b)}"
  elsif operation == "subtract"
    "The result of subtracting is #{subtract(a, b)}"
  elsif operation == "multiply"
    "The result of multypling is #{multiply(a, b)}"
  else
    "That's not a math operation, genius!"
  end
end
p calculator(78, 67, "multiply")
p calculator(8, 67, "subtract")
p calculator(78, 670, "add")
p calculator(78, 67, "minus")
