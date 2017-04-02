# the reverse method reverses the order of an array
p [1, 2, 3].reverse
p ["A", "B", "C"].reverse
p [true, true, false, false, true].reverse

# reverse bang method reverses the order permanently
queue = [2, 3, 15, 16, 32, 42]
p queue

queue.reverse # reverses trmporarily
p queue
p queue.reverse!
p queue
