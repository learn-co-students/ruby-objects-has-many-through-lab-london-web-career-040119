class Artist # create a Artist class
  attr_accessor :name # method for the name of the artist which we giving access to

  @@all = [] # using a class variable to set - to an empty array which we will use to keep track of all Artist instance

  def initialize(name) #initial with name
    @name = name # set name instance varibale to the passing name
    @@all << self # keep track of all instances by putting each instance into the class variable all array
  end

  def self.all # this is a class method used to print our class varibae array all
    @@all
  end

  def new_song(name, genre) # when we add a new song we want to pass it with a song name and song genre
    Song.new(name, self, genre) # when we create a new song we will pass it with song name, the instance of the current Artist and with the song genre
  end


# here we link to another class: Song - in the song class a new song is passed with song name, artist and genre
  def songs # to entre the Song class then within the song class take the class variable all to use to select and go thought the songs listed in that array
    Song.all.select { |song| song.artist == self } # use the .select to gather the information we want from the all array in songs - go thought and assign each song artist to this current instance
  end

  def genres # to go over the list of songs and return a list of genres of these song
    songs.map(&:genre) # using the songs method defined above 
  end
end
