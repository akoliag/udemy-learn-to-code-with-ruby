#If statement executes the code only if the condition is met.
#If the condition is not met, the code won't be executed.

if 5<10
  puts "This math statement is true."
end

if 11<10
  puts "This math statement is true." #false so won't get executed
end

password = "topsecret"
if password == "topsecret"
  puts "Congrats, you've logged into our system"
end

if password == "keyword"
  puts "Congrats, you've logged into our system"
end #false so won't get executed

word = "kangaroo"
if word.length == 8
  puts "That word has 8 letters!"
end

palabra = "zebra"
if palabra.include?("bra")
  puts "That's true, it has a 'bra' part in it."
end

if 5.odd?
  puts "That no. is odd!"
end
