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
 
  #i had problems with this method because it was not returning the object before so had to refactor. RSPEC did not specify so. 
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
  

#   def self.find_or_create_by_name(artist_name)
#       all.detect do |object| 
#       artist = self.new(artist_name) unless object == artist_name
#       end
# end 
  


 
 def print_songs   
  songs.each {|song| puts song.name}
 end 


end