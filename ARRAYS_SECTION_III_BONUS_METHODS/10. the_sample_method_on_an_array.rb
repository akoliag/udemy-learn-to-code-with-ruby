=begin
The sample method can extracts one or more random elements from an array.
=end
flavours = %W[ chocolate strawberry vanilla rum raisin]
p flavours.sample
# using an argument with this method we tell Ruby how many elements it
# should extract and the elements won't be repeated.

p flavours.sample(2)

# if we call more elements than the array has, Ruby is gonna present all
# array elements
p flavours.sample(10)
