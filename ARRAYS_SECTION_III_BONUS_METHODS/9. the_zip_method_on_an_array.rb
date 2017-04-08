=begin
The zip method combines elements of one or more arrays together based on
a common or shared index position.
=end

names = ["Bo", "Moe", "Joe"]
registrations = [true, false, false]

p names.zip(registrations) # returns 1 array with interior arrays matching
# the elements from different arrays by their index position e.g Bo and true etc.

p [1, 2, 3].zip([4, 5, 6], %w[A B C]) # it may also take more than 1 argument

nomi = %w[Andrea Silvia Samuel]
cognomi = %w[Boccelli Barresi Paini]

def custom_zip(arr1, arr2)
  final = []
  arr1.each_with_index do |value, index|
    final << [value, arr2[index]]
  end
  final
end

p custom_zip(nomi, cognomi)
