require 'pry'
class MP3Importer
  attr_accessor :path 
  
  def initialize(path)
    @path = path
  end 
  
  def files
     binding.pry
    Dir.entries(@path).select {|i| i.end_with? ".mp3" }
   
  end
  
  
  def import
    self.files.each {|filename| Song.new_by_filename(filename)}
  end 
     

end 