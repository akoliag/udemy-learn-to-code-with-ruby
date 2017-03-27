#10.times {puts "Aga is learning"}
# powyższe stosuje sie do jednolinijkowych powtorzen

3.times do  |count|
  puts "Aga is learing the line number #{count}"
  puts "Ruby is great!"
end
# do and end jest do kilku linijkowych powtórzeń
# Blocks can also include something called block variable
#it is a temporary variable representing something within
#this block execution
#what the block variables represent depends on the method
#used in a given block
#with .times method the block varaible is going to present us
#with the number of iterations
3.times do  |count|
  puts "Aga is learing the line number #{count + 1}"
#jesli dodamy 1 do counta to zacznie nam liczyc od 1, a nie od 0
  puts "Ruby is great!"
end
10.times { |count| puts "Aga is learning the line number #{count + 4}"}

#Challenge
#Use the times method to output the first
#ten multiples of 3 (3, 6, 9, 12 ...30)
10.times do |three|
 puts "the multiple of 3 is #{3 * (three + 1)}"
end
puts #dodaje przerwe miedzy zapisami
#dodajemy umieszczamy three + 1 w dodatkowym nawiasie aby obliczenie
#zostało wykonane przed mnozeniem czyli po dodaniu 1 ruby zacznie liczyc od 1
#a nie od 0
10.times {|three| puts "The multiple of 3 is #{3 * (three + 1)}"}
# w drugim sposobie na utworzenie blocka rowniez jest to samo wylicznie
#tylko inny zapis
# Block cannot live on its own but only with the method call
