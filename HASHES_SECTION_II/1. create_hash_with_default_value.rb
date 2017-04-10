fruit_prices = Hash.new(0) # assigning a default value to the Hash

fruit_prices[:banana] = 1.05
fruit_prices[:orange] = 0.69
fruit_prices[:kiwi] = 3.29

p fruit_prices[:banana]
p fruit_prices[:apple] # if we assign a default value to the Hash
# after calling a key which doesn't exist in this hash, we will get
# this default value, not a nil

# assigning a new default value using .default method:
fruit_prices.default = "Whoops! That doesn't exist here!"
# with default method we don't provide the default value as
# an argument in the brackets but we put it after the equal sign.
p fruit_prices[:apple]
p fruit_prices[:pear]
p fruit_prices[:grape]
