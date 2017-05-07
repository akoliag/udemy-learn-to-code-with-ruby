class Book
  def initialize(title, author, pages)
    @title = title
    @author = author
    @pages = pages
  end
end
goosebumps = Book.new("Night of the Living Dummy", "R.L. Stine", 100)
p goosebumps

class Book
  def read
      1.step(@pages, 10)  {|page| puts "Reading page #{page}..."}
      puts "Done! #{@title} was a great book!"
  end
end

animal_farm = Book.new("Animal Farm", " George Orwell", 50)
p animal_farm

p animal_farm.read # at the end we get nil as the last statement in the
# method is puts and puts always returns nil while being last
puts
p goosebumps.read # this method is available for every class object even
# goosebumps that was created before monkey patching
