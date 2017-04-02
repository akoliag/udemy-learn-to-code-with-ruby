# .concat method mutates the array permanently
numbers = [1, 2, 3]
p numbers
p numbers.concat([4, 5, 6])
p numbers

# Exercise by Boris:
# return arr1 with all of the elements from arr2
# add them at the end
# use method
a = [1, 2, 3, 4, 5]
b = [6, 6, 8 , 10, 11]
#my solution:
def custom_concat(arr1, arr2)
    new_array = arr1.concat(arr2)
    puts "The new array consists of #{new_array}"
end
puts custom_concat(a, b)

puts

#Boris' solution:
def custom_concat(arr1, arr2)
    arr2.each {|elem| arr1 << elem}
end
p custom_concat(a, b)
