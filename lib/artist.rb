require_relative '../lib/song.rb'
require_relative '../lib/genre.rb'

class Artist
  @@all = []

  attr_accessor :name

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name,genre)
    name = name
    genre = genre
    Song.new(name,self,genre)
  end

  def songs
    Song.all.select{|song| song.artist == self}
  end

  def genres
    songs.map{|song| song.genre}
  end
end
