File.open("MyFirstFile.txt", "a") do |file|
  file.puts "I'm writing this from Ruby."
  file.write "No line break with this method."
  file. puts "Pretty cool!"
  file.puts "Let's append sth to the exisiting content..."

end
# the first argument is the file that doesn't exist yet, the second can be "w"
# standing for write but this command overwrites everything that is in that file
# with the new content that is provided. It is ok when the file is newly created
# but when the file already exists usually we do not want to overwrite its
# content. Not to overwrite we use the command "a" for append which adds
# the content to the exisiting file.
