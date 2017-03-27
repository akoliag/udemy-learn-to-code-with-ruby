#Both the empty method and the nil one are boolean methods.
#The empty methods returns true only if the string is empty
#so has no characters
p " ".empty?
p "".empty?
#The nil method returns true if the value is nil (even an empty string is not nil)
#so we use it when an operation may lead us to a nil and  we may not be aware
#of this
name = "Donald Duck"
last_name = name[100, 4]#there is mistake in here as name Donald Duck
#has no index position no 100 so we get nil
p last_name
p last_name.nil?
