#Default method
def nothing
end
p nothing
#the default return value for the method like above is simply nil as there
#is no body method

def return_string
  "What will be the return value here?"
end

p return_string

def return_guess
  puts "Blah blah blah"
end

p return_guess

#the puts method itself always returns nil so no mather what we put
#in this method the result is always the same. It is the equivalent
#of return nil like below:
#def return_guess
#  puts "It doesn't matter"
#  return nil
#end

result = return_guess
p result
p result.class
