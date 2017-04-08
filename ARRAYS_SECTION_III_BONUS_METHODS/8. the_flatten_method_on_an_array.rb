=begin

This method removes all interior nested arrays within the main array.
It simply extracts the elements and puts them all in a sequence and gives back
one single dimensional array.

=end
registrations = [["Sean", "Bob", "Molly"], ["Pierce", "Joe", "Kate"],
                 ["Dan", "Andy", "Barbara"]]

# by unpacking the array: a, b, c = registrations - we get 3 different arrays

p registrations.flatten # using this method we get 1 array
