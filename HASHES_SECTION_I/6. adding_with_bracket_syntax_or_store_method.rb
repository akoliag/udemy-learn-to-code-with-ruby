menu = {burger: 3.99, taco: 5.78, chips: 0.5}

# adding additional key and its value to a hash:
menu[:sandwich] = 8.99
p menu

# changing the value of existing key:
menu[:taco] = 2.99
p menu

# The store method is called directly on a hash and modifies it in place
# It takes 2 arguments - the first one is the key and the second one is
# the value.
menu.store(:salad, 5.99)
p menu
