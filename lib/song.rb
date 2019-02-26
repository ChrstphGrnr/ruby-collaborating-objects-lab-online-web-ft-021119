require "pry"
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    # binding.pry
    @artist = filename.split(/\ - /)[0]
    @song_name = filename.split(/\ - |.mp3/)[1]
    @song = Song.new(@song_name)
    @artist = Artist.find_or_create_by_name(@artist)
    @artist.save
    @song.artist = @artist
    @artist.add_song(@song)
    @song
  end



end
