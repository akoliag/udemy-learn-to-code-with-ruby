def custom_each(array)
  i = 0 # represents the index position of the first array item
  while i < array.length
    yield array[i]
    i += 1 # closing the loop to avoid the infinite one
  end
end

names = %w[Boris Arnold Melissa]
numbers = [10, 30, 45]

custom_each(names) {|name| puts "The length of #{name} is #{name.length}."}
custom_each(numbers) {|number| puts "The square of the #{number} is #{number**2}"}
