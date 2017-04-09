 p :age
 p :age.to_s.class # converting a symbol to a string
 p "age".to_sym.class # converting a string to a symbol
 p "School bus".to_sym # when converting a string with a space into a symbol
 # this symbol is going to be presented in the output as :"School bus"
 # so it is still surrounded by double quotes. If we use underscore instead of
 # space there are no double quotes:

 p "School_bus".to_sym
