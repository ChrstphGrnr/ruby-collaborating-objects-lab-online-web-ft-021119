require "pry"
class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def save
    #binding.pry
    @@all << self
  end

  def self.find_or_create_by_name(name)
    # binding.pry
    self.all.find {|artist| artist.name} ? self.all.find {|artist| artist} : Artist.new(name)
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end
# binding.pry

end
