class Genre # another class Genre
  attr_accessor :name # accress to the method name - name of the genre

  @@all = [] #  using a class variable to set - to an empty array which we will use to keep track of all genre instance


  def initialize(name) # initialize with a name
    @name = name
    @@all << self # push each genre instance into the all array
  end

  def self.all # print the all array
    @@all
  end

  def songs # linking also to the Song class
    Song.all { |song| song.genre == self } #going thought the list of songs from song class varibale all and setting the song.genre to the current instance
  end

  def artists # using the above song method to give us a list of artists
    songs.map(&:artist)
  end

  def add_song(song) # use this to add each new song passed to push into songs method 
    songs << song
  end
end
