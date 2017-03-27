#the case statement is used to simplify the if statement. Insetad of using
#a lot of different if statements we use case.

#def rate_my_food(food)
#  if food == "Steak"
#    puts "I love steak. Pass the sauce!"
#  if food == "sushi"
#    puts "I love sushi. It's my favourite!"
#    etc....
# end
# end

def rate_my_food(food)
  case food
  when "Steak"
    puts "I love steaks! Pass the sauce!"
  when "sushi"
    puts "It's my favourite!"
  when "Lasagne"
    puts "That's sth for me!"
  when "spaghetti", "pizza", "tiramisu"
    puts "I don't like it!"
  else
    "I don't know about that food"
  end
end
#instead of writing a lot of ifs and equal signs e.g. if food =="", we put
#just when and that's all. We can even put more that one thing in a line
#and we don't need to use "or"
puts rate_my_food("Steak")
puts rate_my_food("sushi")
puts rate_my_food("sandwich")
puts rate_my_food("pizza")

def calculate_school_grade(grade)
  case grade
  when 90..100
    "A"
  when 80..89
    "B"
  when 70..79
    "C"
  when 60..69
    "D"
  else
    "The exam has been failed! Please sit it one more time!"
  end
end

p calculate_school_grade(95)
p calculate_school_grade(80)
p calculate_school_grade(71)
p calculate_school_grade(60)
p calculate_school_grade(15)
#we can simplify the method by puting the conditions and their outputs
#in the same line and add "then":
def calculate_school_grade(grade)
  case grade
  when 90..100 then "A"
  when 80..89 then "B"
  when 70..79 then "C"
  when 60..69 then "D"
  else   "The exam has been failed! Please sit it one more time!"
  end
end
