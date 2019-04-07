class Artist
  attr_accessor :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  # &:genre is a shortcut for |element| element.genre
  def genres
    songs.map(&:genre)
  end
end
