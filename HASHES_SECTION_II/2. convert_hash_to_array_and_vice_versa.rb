# Converting a hash to an array:

spice_girls = {scary: "Melanie Brown", sporty: "Melanie Chisholm",
               baby: "Emma Bunton", ginger: "Geri Halliwell",
               posh: "Victoria Beckham"}

p spice_girls.to_a # we get 1 array with 5 interior arrays inside
p spice_girls.to_a.flatten # removes all nested arrays

# Converting an array to a hash:
# we need to have an array with arrays nested in it:
power_rangers = [[:red, "Jason"], [:black, "Zack"], [:blue, "Billy"],
                  [:yellow, "Trini"], [:pink, "Kimberly"]]
p power_rangers.to_h
p power_rangers.to_h.class
