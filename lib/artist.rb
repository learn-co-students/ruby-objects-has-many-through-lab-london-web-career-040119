class Artist
  attr_accessor :genre, :artist, :name, :songs

  @@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
     Song.new(name, self, genre)
     #new_song=Song.new(name, self, genre)  #declare new variable called new_song.
    #songs << new_song              #push new_song to songs=[] under class Artist
    #genre.songs << new_song   #push new_song to songs=[] under class Genre
  end

  def songs #return an array of all songs of an artist.
    Song.all.select {|song| song.artist == self} # all songs from Song class
  end

  def genres  #return an array of genre of each song.
    songs.map {|song| song.genre}
  end
end
