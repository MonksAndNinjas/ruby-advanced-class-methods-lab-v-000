require'pry'
class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save   #song.save
    self.class.all << self     #def name=(name) @name = name  end  def name @name  end
  end

  def self.create
    song = self.new
    self.all << song
    song
  end

  def self.new_by_name(song_name)
    song = self.new
    song_name = song.name=(song_name)
  end

end
