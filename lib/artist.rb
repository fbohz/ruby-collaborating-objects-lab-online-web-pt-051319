require 'pry'
class Artist 
  attr_accessor :name 
  attr_reader :songs 
  
  @@all = []
  
 def initialize(name)
   @name = name
   @songs = []
 
 end
 
 def save
   @@all << self
 end 

 def add_song(song)
   @songs << song
 end
 
 def self.all 
   @@all 
 end 
 
  
  def self.find_or_create_by_name(name)
    name_match = all.detect{|object| object.name == name}
    if name_match
      name_match
    else
      new_object = self.new(name)
      new_object.save
      new_object
    end
  end
  

 
 def print_songs   
  songs.each {|song| puts song.name}
 end 


end