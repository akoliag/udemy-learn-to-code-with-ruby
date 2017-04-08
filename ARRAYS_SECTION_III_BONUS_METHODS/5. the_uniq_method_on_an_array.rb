# This method returns back a new array with all the duplicates from the
# original array rmoved.
numbers = [1, 2, 9, 2, 3, 1, 7, 8, 9]

p numbers
numbers.uniq! # a bang method applied in here
p numbers

numbers_2 = [23, 45, 67, 89, 23, 45, 89, 67]

def custom_uniq(array)
  final = []
  array.each {|element| final << element unless final.include?(element)}
  final
end
 p custom_uniq(numbers_2)
