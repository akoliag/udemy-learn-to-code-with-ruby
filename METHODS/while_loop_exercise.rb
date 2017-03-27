status = true
while status #we don't have to put while status == true as status is a boolean
  #value
  print "Please enter username:"
  username = gets.chomp.downcase
  print "Please enter your password:"
  password = gets.chomp.downcase
  if username == "aga" && password == "botak"
    print "Access granted!"
    status = false # we need to add in here status = false to close the loop
    #otherwise we will have an infinite loop
  elsif username == "quit" || password == "quit"
    print "Goodbye. Better luck next time"
    status = false
  else
    puts "Incorrect combination, try again or enter 'quit'."
  end
end
