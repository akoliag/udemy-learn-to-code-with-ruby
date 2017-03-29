#Pulling out more that one element at once
numbers = [2, 4, 5, 9, 11, 15, 17]
p numbers[2, 4]#pulls put 4 index positions starting with theindex position no.2
#so pulls out 5, 9, 11, 15
p numbers[0]#extracts element with index position no.0 so it is 2
p numbers[0].class
p numbers[0,1]#extracts 1 element starting with index position no.0  so it is 2
p numbers[0,1].class
p numbers[4, 100]#pulls out only existing elements and then cuts off
