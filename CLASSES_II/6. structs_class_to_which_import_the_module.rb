#require_relative 'structs_module_to_be_included'
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

class Gadget
  include AppStore
#attr_writer :password
attr_reader :production_number, :apps
attr_accessor :username, :password

def initialize(username, password)
  @username = username
  @password = password
  @production_number = generate_production_number
  @apps =[]
end

def to_s
  "Gadget #{production_number} has the username #{username}.
   It is made from the #{self.class} class and it has the ID #{object_id}."
end

def install_app(name)
  app = AppStore.find_app.(name)
  @apps << app unless @app.include?(app)
end

def delete_app(name)
  app = apps.find {|installed_app| installed.app.name == name }
  apps.delete(app) unless app.nil?
end


def reset(username, password)
  self.username = username
  self.password = password
  self.apps = []

end

def password=(new_password)
  if validate_password(new_password)
    @password = new_password
end
end
private

attr_writer :apps

def generate_production_number
  start_digits = rand(1000..9999)
  end_digits = rand(1000..9999)
  alphabet = ("A".."Z").to_a
  middle_digits = "2017"
  5.times {middle_digits << alphabet.sample}
  "#{start_digits}-#{middle_digits}-#{end_digits}"
end

def validate_password(new_password)
  new_password.is_a?(String) && password.length >= 6 && new_password =~ /\d/
end
end
g = Gadget.new("boris", "password")
p g.apps
g.install_app(:Chat)
p g.apps
g.install_app(:Twitter)
p g.apps
