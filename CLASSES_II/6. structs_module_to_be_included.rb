=begin
A struct represents a miniclass with less functonality than a typical Ruby class.
It is like a class with only instance variables. It is used when we only need
a framework for an object.
=end

module AppStore
  App = Struct.new(:name, :developer, :version) # as argument we provide symbols
 # representing instance variables on this struct


# defining a constant:
APPS = [App.new(:Chat, :facebook, 2.0),
        App.new(:Twitter, :twitter, 5.8),
        App.new(:Weather, :yahoo, 10.15)]
def self.find_app(name)
  APPS.find {|app| app.name == name}
end
end
