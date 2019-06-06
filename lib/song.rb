class Song
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
 
  def self.new_by_filename(file) 
   title = file.split(" - ")[1]
   new_song = self.new(title)
<<<<<<< HEAD
   new_song.artist = Artist.find_or_create_by_name(file.split(" - ")[0])
   new_song.artist.add_song(new_song)
   new_song
  end  
  
=======
   
   new_song.artist = Artist.find_or_create_by_name(file.split(" - ")[0])
   new_song.artist.add_song(new_song)
  new_song
  
  end  
>>>>>>> c23bf9c20c99e6ee9894da0d18785950987c6518
end




