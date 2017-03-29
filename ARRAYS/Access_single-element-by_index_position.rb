fruits = ["Apple", "Orange", "Grape", "Banana"]

p "Hello world".length #returns the number of characters in the string
p fruits.length # with array it returns the total number of elements
#within an array
#every element in an array has an index position

p fruits [1] #extracts the element with index position no.1 'but the
#counting starts at 0
p fruits [0]
p fruits[10]#there is no index position no.10 in the array and that is
#why Ruby returns nil
p fruits[100]#there is no index position no.100 in the array and that is
#why Ruby returns nil
p fruits.last #returns the last item of the array
p fruits[fruits.length - 1]# also returns the last item of the array
p fruits[-1]# also returns the last item of the array (starts couting
#backwords but starting with 1)
