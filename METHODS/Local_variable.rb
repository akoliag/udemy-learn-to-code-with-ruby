#Local varaible functions in a given environment only, e.g. if  it is specified
#in a method it is going to be used only within this method - only when
#the method is being executed

expression = "Let's try this" #this variable has nothing to do with this
#defined in the method below although their names are the same
puts expression


def introduce_myslef

  expression = "I'm a genius"
  puts expression
end

introduce_myslef

puts expression

# puts expression - if we try to call the variable specified in the above
#method outside this method we are going to get an error as everything
#that is defined within a method, can be called locally only within
#that method

#Even if we already have a varaible called expression before defining it
#within a method this is going to be a totally different variable so we will
#have 2 variables with the same name: one outside method and one within it
