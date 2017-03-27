3.times {puts "Aga is awsome!"} # one way of doing blocks

3.times do
  puts "Aga is learning Ruby"
  puts "and she likes it very much"
end # do and end jest dla powtorzen kilkulinijkowych


# Block variable
# z metodą .times block variable umieszczona w liniach prostych
# oddaje numer powtorzenia zaczynajac od 0
3.times do |count|
  puts "We are currently on the loop number #{count}"
  puts "Aga is learning Ruby"
  puts "and she likes it very much"
end
# the results of the block depend on the method to which it is attached
# block variable exists only locally within the block execution

3.times do |count|
  puts "We are currently on the loop number #{count + 1}"
  #{count + 1 zacznie liczyc od 1, a nie od 0}
  puts "Aga is learning Ruby"
  puts "and she likes it very much"
end

3.times { |count|puts "Aga is awsome!"}# w jednej linijce zaraz przed puts dajemy ||
