#Task 1:
#[1, 2, 3, 4, 5]
#write a loop that gives me a sum of the products of each index and its value
sum = 0
range = [1, 2, 3, 4, 5]
range.each_with_index do |number, index|
  result = number * index
  sum += result
end
#both the sum and the result get overwritten with each loop

p sum

puts
#Task 2:
# [-1, 2, 1, 2, 5, 7, 3]
# print the product of an element and its index position if the index position
# is greater that the element
# create this within a method


arr = [-1, 2, 1, 2, 5, 7, 3]
def print_if(arr)
  arr.each_with_index do |number, index|
  if number < index
    puts "We have a match. The index is #{index} and the number is #{number}."
    puts "The result is #{index * number}."
    end
  end
end

print_if(arr)
