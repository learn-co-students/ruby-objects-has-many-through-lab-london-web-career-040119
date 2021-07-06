class Genre

  attr_accessor
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all.push(self)
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select{|song| song.genre == self}
  end

  def artists
    songs.map{|song| song.artist}
  end


end




# The Genre class needs an instance method, #songs, that iterates through all songs and finds the songs that belong to that genre.

# The Genre class needs an instance method, #artists, that iterates over the genre's collection of songs and collects the artist that owns each song.
