#Fizzbuzz although seems simple, is a complex exercise and it's pretty common
#at job inteviews

#Fizzbuzz challenge: Exercise by Boris:

#If the number is divisible by 3, output Fizz
#If the number is divisible by 5, output Buzz
#if the number is divisible by BOTH, output Fizzbuzz

def fizzbuzz(number)
  i = 1
  until i > number
    if i % 15 == 0
      puts "Fizzbuzz for #{i}"
    elsif i % 3 == 0
      puts "Fizz for #{i}"
    elsif i % 5 == 0
      puts "Bizz for #{i}"
    end
    i+=1
  end
end

fizzbuzz(45)
#modulo (%) is used in here as thanks to that we can specify the remider of
#a number; we need to remember to close the loop 
