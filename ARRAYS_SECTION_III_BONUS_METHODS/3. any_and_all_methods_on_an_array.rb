# Both are boolean methods ending with a question mark and they require a block.

# Let's check if any of the below values are even:
p [1, 3, 5, 7, 2, 4, 6, 8].any? do |number|
  number.even?
end

p [1, 3, 5, 7, 9].any? {|n| n.even?}

p [1, 3, 5, 7].all? {|n| n.odd?}
p [2, 1, 3, 7].all? {|n| n.odd?}
