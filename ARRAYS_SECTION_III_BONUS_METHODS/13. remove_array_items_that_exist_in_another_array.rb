=begin

Using the minus sign to remove array items that exist in another array from
our starting array.

=end
p [1, 1, 2, 2, 3, 3, 3, 3, 4, 5,] - [2, 3] # removes all 2 and 3 values

a = [111, 111, 112, 113, 113, 114, 115, 116]
b = [111, 113]
def custom_subtraction(arr1, arr2)
  final = []
    arr1.each{|value| final << value unless arr2.include?(value)}
  final

end
p custom_subtraction(a, b)
