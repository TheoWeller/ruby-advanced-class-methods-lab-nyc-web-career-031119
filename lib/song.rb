require 'pry'
class Song
  attr_accessor :name, :artist_name
  @@all = []



  def self.new_by_name(name)
    song_1 = Song.create
    song_1.name = name

end

  def self.find_by_name(name)
    Song.all.find {|song| song.name == name}
  end

  def self.create_by_name

  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
    self
  end

  def self.create
    self.new.save

  end

  def self.new_by_name(name)
    song = self.new.save
song.name = name

  end

def self.destroy_all
  @@all.clear
end


end
