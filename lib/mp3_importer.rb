require "pry"
class MP3Importer

  attr_accessor :path, :file_names

  def initialize(file_path)
    @path = file_path
<<<<<<< HEAD
    # binding.pry
    @file_names = Dir.entries(@path).keep_if{|item| item.end_with?(".mp3")}
    # @file_names.pop
    # @file_names.shift
=======
    @file_names = []
>>>>>>> 172646711cd329c9e6233e4396cdd5bd9312f8b1
  end

  def files
    @file_names = Dir.entries(@path)
    # binding.pry
    @file_names.pop
    @file_names.shift
    @file_names
    # binding.pry
  end

# binding.pry

  def import
    # binding.pry
    @file_names.each do |file|
      # binding.pry
      Song.new_by_filename(file)
      # binding.pry
    end
  end


end
<<<<<<< HEAD

# def initialize(path)
#     @path = path
#     @files = Dir.entries(path).select {|f| f[-3..-1] == "mp3"}
#   end
=======
>>>>>>> 172646711cd329c9e6233e4396cdd5bd9312f8b1
