File.rename("MyFirstFile.txt", "FileSecondName.txt") # first argument is the name
# of the file we want to change and the second is the new name we want it to
# have.

# to delete: File.delete("here we put the file name we want to delete")
=begin
or we can use:

  if File.exist?("MyFirstFile.txt")
  File.delete("MyFirstFile.txt")
  end

=end
