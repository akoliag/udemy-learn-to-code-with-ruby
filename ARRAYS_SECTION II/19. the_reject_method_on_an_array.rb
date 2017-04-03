# the reject method is used with a block and
# returns a new array that rejects all of these elements
# for which the block evaluates to true.
# this method does exactly the opposite of what the select method does.
# the condition we put in the block must evaluate to the boolean value.
animals = ["cheetah", "cat", "lion", "elephant", "dog", "cow"]
select_results = animals.select {|animal| animal.include?("c")}
p select_results # returns all the words with the letter "c"
reject_results = animals.reject {|animal| animal.include?("c")}
p reject_results
# only the words without the letter "c" are returned as the method does
# the opposite
