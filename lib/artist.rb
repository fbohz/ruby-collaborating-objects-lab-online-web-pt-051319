class Artist 
  attr_accessor :name
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
 
 def songs 
   @songs 
 end 
 
 def self.all 
   @@all 
 end 
 
  
 def find_or_create_by_name(artist_name)
 end

end