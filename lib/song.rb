require "pry"

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    binding.pry
    # self.class aka Song
    self.class.all << self
  end
  
  def self.create
    new_song = self.new
    self.all << new_song
    new_song
  end
end
