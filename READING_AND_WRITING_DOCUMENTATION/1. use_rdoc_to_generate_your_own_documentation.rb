class Album
  include Enumerable
  attr_reader :songs

  def initialize
    @songs = []
  end
  def add_song(song)
    songs << song
  end
  def each
    songs.each do |song|
      yield song
    end
  end
end

thriller = Album.new
thriller.add_song("Thriller")
thriller.add_song("Billie Jean")
puts thriller.songs

# creating documentation in the Command line:
# rdoc file_name.rb - will create an html file in the folder
