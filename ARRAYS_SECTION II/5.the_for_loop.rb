#for loop in Ruby is not so much used as in other lgs; it is almost
#equivalent to an each loop but if it comes to .each loop the local variable
#works only within this loop and it is gone after the code is done executing
#while with for loop the variable may work also outside the loop
numbers = [3, 5, 10]
for num in numbers #meaning for every element/number in the numbers array
  puts num
end
p num #if we call the num variable outside the for loop it is going to return
#the last value from the array it used in the loop and if e.g. somewhere
#before in the code we already used this name of variable, it is going
#to get overwritten - which may tirgger an error later in the code
