#while creates a loop for us and continues that loop
#until the condition is not met
i = 1
while i < 10
  puts i
  i += 1
end

#what it does is going in loop until it meets all values that are less than 10
#in the above case it goes around in loop 9 times incrementing every time
# 1 by 1 (see the runner window)

#if we call the variable "i" right now it no longer holds the value of 1
# its value has changed after us running the while loop
puts

 puts i

# if we don't know how many iterations something is going to take
#in this case we use the while statement:

status = true
while status #we don't have to put while status == true as status is a boolean
  #value
  print "Please enter username:"
  username = gets.chomp.downcase
  print "Please enter your password:"
  password = gets.chomp.downcase
  if username = "aga" && password = "botak"
    print "Access granted!"
    status = false # we need to add in here status = false to close the loop
    #otherwise we will have an infinite loop
  elsif username = "quit" || password = "quit"
    print "Goodbye. Better luck next time"
    status = false
  else
    puts "Incorrect combination, try again or enter 'quit'."
  end
end
