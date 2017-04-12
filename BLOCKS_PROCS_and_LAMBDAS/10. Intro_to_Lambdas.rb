=begin
Lambdas are objects like the procs and come from the class called Procs.
We can use a lambda anywhere a proc is used.
=end

# procs:

squares_proc = Proc.new {|number| number ** 2}
p [1, 2, 3].map(&squares_proc)
p squares_proc.call(5)


squares_lambda = lambda {|number| number ** 2}
p [1, 2, 3].map(&squares_lambda)
p squares_lambda.call(5)

# If we provide lambda with  a wrong or unexpected argument, it's going to throw
# an error - a proc in this case will ignore it and return a nil.
some_proc = Proc.new {|name, age| "Your name is #{name} and your age is #{age}."}
p some_proc.call("Boris", 25)

# If we provide the above proc with only one argument, it returns nil in the
# place of age.

p some_proc.call("Boris")
p some_proc.call()

some_lambda = lambda {|name, age| "Your name is #{name} and your age is #{age}."}
p some_lambda.call("Boris", 25)
#p some_lambda.call("Boris") # we get the error in here
#p some_lambda.call() # we get the error in here due to wrong number of arguments

def diet_lambda
  status = lambda {return "You gave in"}
  status.call
  "you completed the diet!"
end

# when using the return keyword with lambda, it returns control back to the
# method. The method is still going to continue and will reach the line no. 4
# so will return "you completed the diet"
p diet_lambda

def diet_proc
  status = Proc.new {return "You gave in"}
  status.call
  "you completed the diet!"
end
p diet_proc
# when we use the return keyword with the proc, it is going to be the return for
# the whole method not just the block. It never actually transfers control
# back to the method so it will return "you gave in!"
