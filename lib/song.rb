require "pry"

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    # self.class is the same as saying Song
    self.class.all << self
  end
  
  def self.create
    new_song = self.new
    self.all << new_song
    # binding.pry
    new_song
  end
end
