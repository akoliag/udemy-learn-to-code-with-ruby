#If we have a lot of arguments in the method and we don't need to provide all
#of them we may set some of them as default values and then the code
#won't get an error but will be executed. Default and optional paramenters
#we need to add at the very end of our argument list in the brackets.
#in the example below we don't need to dial all the times international_code
#and area_code so we put them in the brackets after the argument that
#is required and set them as the default ones:

#Default values we set with the equal sign as below:
def make_phone_call(number, international_code = 1, area_code = 342)
  puts "Calling #{international_code} - #{area_code} - #{number}"
end
#When calling a method I can provide all 3 arguments and if I provide
#different arguments than these that are set as defaul ones, the defaut ones
#will get overwritten:
make_phone_call(512340969, 48, 71) # in the runner we may see that the
#default ones got overwritten

#If we provide only one argument when calling a method - the one that
#is required, the rest is going to be called automatically. See below:
make_phone_call(5123499)
