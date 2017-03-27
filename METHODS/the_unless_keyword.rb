#unless statement says execute if false while if statement says execute
#if true

password = "dominoes"

if password != "whiskers"
  puts "Access denied"
else
  puts "Access allowed, welcome!"
end

#Instead of using is statement in this case, we can use unless statement:

unless password == "whiskers"
  puts "Access denied"
else
  puts "Access allowed, welcome!"
end

unless password.include?("a")
  puts "The password does not include this letter!"
end
