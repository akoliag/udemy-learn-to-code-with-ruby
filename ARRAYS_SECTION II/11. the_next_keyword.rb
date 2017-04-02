# next moves to the next iteration in a current loop
numbers = [1, 2, 3, "hello", 5, 6, nil, 7, 8, []]
numbers.each do |num|
  unless num.is_a?(Fixnum)
    next # moves on to the next element of the array when meets non integer
  else
    puts "The square of #{num} is #{num ** 2}"
  end
end
