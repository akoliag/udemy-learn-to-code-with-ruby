arr = [1, 3, 5, 7, 9, 15, 21, 18, 6]
p arr.first
p arr.last
#not providing any arguments with thses methods we will get
#the first and the last object of the array
p arr.first(2)#pulls out the first two elements and the result
#will always be an array
p arr.last(4)# pulls the last four elements, the final result
#it's always going to be an array
p arr.first #we get here a number
p arr.last #we get here a number
p arr.first(1)#we get here an array with one element
p arr.last(1)#we get here an array with one element
def custom_first(arr, num = 0)
  return arr[0] if num == 0
  arr[0, num]
end
p custom_first(arr)
p custom_first(arr, 5)
p custom_first(arr, 1)


def custom_last(arr, num = 0)
  return arr[-1] if num == 0
  arr[-num..-1]
end
p custom_last(arr)
p custom_last(arr, 5)
p custom_last(arr, 1)
p arr 
