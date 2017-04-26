puts "This is the beginning!"

require "./end.rb" # require always takes "./"" but the .rb extension
# is not necessary.

require "./end.rb"

require "./end.rb" # Althogh we put this method more than once it is
# going to be executed only once.

require_relative "end.rb" # doesn't take "./" as its scope is the
# current file only; can't be executed more than once as it won't work.

require_relative "a/b/epilogue.rb"
# we provide Ruby with the file path: look in folder a, then folder b,
# then take file epilogue.rb
