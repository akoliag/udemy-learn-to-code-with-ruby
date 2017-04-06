# This method inserts a character or characters at a specified index position
# in the string the method is called on.
typo = "GeorgWashington"
typo.insert(5, "e ") # the first argument is the index position at which we
# want to insert a character and the second argument is the character we want
# to insert in this place. This method modifies the string that is called on.
p typo
typo.insert(-1, "!") # adds the exclamation mart at the end of the string
p typo
