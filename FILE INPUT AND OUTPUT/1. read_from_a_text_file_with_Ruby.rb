File.open("novel.txt").each do line # we will get an array here so we need
  # to tell Ruby by the block how to read it; it doesn't work in the Atom editor
  # needs to be open in the command prompt
  puts line
end
