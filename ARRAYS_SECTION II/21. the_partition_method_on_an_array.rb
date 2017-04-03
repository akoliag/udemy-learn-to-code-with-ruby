# the partition method calls the select and reject methods in one step
# at the same time and gives back a multidimensional array of 2 arrays where
# the first one represents those that are selected and
# the second one represents all that are rejected.
foods = ["steak", "vegetables", "steak burger", "kale", "tofu", "tuna steak"]
good = foods.select {|food| food.include?("steak")}
bad = foods.reject {|food| food.include?("steak")}
p good
p bad

# but I can do the above using only 1 method:

p foods.partition {|food| food.include?("steak")}
# the result we get in one array but consisting of 2 subarrays (see the runner)

# to unpack this multidimensional array that we have just got we may assign it
# as follows:
good, bad = p foods.partition {|food| food.include?("steak")}

p good
p bad
