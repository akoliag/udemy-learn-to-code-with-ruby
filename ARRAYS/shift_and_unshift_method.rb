#both methods operate on the beginning of an array
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p arr
arr.shift #removes the first element
p arr
extract = arr.shift(1)
p extract # the removed element is preserved in this variable
#when used with an argument, the argument specifies the total number
#of elements to be removed on the beginning
#the unshift method adds the element to the beginning of an array
arr.unshift(25)
p arr
#we can add more arguments with this method just separating them with a coma
arr.unshift(25, 55, 78)
p arr
