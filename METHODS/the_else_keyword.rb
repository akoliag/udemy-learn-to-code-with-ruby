#The else keyword:
#We use this condition to execute the code although the conditions defined
#in the code are not met.
grade = "C"
if grade == "A"
  puts "That's an excelent grade. Good job!"
elsif grade == "B"
  puts "Good job"
else
  puts "Unacceptable"
end

def odd_or_even(number)
  if number.odd?
    "That number is odd" #we don't need puts/p/print here
    #because the last expression in a method it's what's returned
  else
    "That number is even" #this is the last expression in this part
    #of a method so p/puts/print are also unnecessary
  end
end
p odd_or_even(5)
