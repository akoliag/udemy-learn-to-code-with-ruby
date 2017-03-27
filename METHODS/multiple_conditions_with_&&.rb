# && double  sign like this  means that more than one condition has to be met
age = 25
ticket = "General Admission"
id = true

if age > 21 && ticket && id
  puts "Congrats, welcome to the show"
end
# in  the above example all three  conditions have to be met so:
#age must be more than 21 and the ticket must be General Admission
#and the id must be true
#what is more we don't have to write && id == true as id is the boolean
#value either someone has it or not so that is why we may leave the
#code line as the following: if age > 21 && ticket == "General Admission" && id
#In addition any string in Ruby evaluates to true so if there are different
#kinds od ticket and the most important thing is to have one to get to the
#concert we don't need to specify the kind of the ticket as all kinds
#of ticket are acceptable. We don't nedd to write:
# ticket == "General Admission" as:
#if age > 21 && ticket && id it means that:
# && ticket is true
# && id is true
if age > 21 && ticket && id
  puts "Congrats, welcome to the show"
elsif ticket && id
  puts "Alright, yu get in anyway."
end
#In this example if you're younger than 21 you're going to get in anyway as if
#the first condition is false Ruby checks if the second one it's true and
#lels the person get in

#Short circuit evaluation means that if Ruby assesses the first condition
#and it's false and to execute the code the first condition must be treu
#Ruby won't check the rest of the conditions as there is no point doing so
