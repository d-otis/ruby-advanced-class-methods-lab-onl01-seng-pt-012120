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
  
  def self.new_by_name(song_name)
    new_song = self.new
    new_song.name = song_name
    # self.all << new_song
    new_song
  end
  
  def self.create_by_name(song_name)
    new_song = self.new
    new_song.name = song_name
    self.all << new_song
    new_song
  end
  
  def self.find_by_name(name)
    self.all.find{|song| song.name == name}
  end
  
  def self.find_or_create_by_name(name)
    if self.find_by_name(name)
      self.find_by_name(name)
    else
      self.create_by_name(name)
    end
  end
  
  def self.alphabetical
    binding.pry
  end
  
end
