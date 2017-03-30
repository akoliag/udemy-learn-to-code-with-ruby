#the pop method removes an element from the end of an array
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p arr
arr.pop #cuts off the last element of an array
p arr
arr.pop
p arr
#we can always preserve the removed elements and store them in a variable
last_item = arr.pop
p arr
p last_item
#when we provide an argument with this method it's going to be the total
#number of elements we want to cut off at the end
two_items = arr.pop(2)
p two_items
p two_items.class
#the pop method always returns an array when it's called with an argument
two_items = arr.pop
p two_items #when called without an argument we get a number
