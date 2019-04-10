require 'pry'
require_relative '../lib/song.rb'
require_relative '../lib/genre.rb'

class Genre

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|song| song.genre == self}
  end

  def artists
    self.songs.map {|song| song.artist}
  end

end
