require "pry"

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    # the following do not pass the tests
    # Attempt 1===========
    # @@all << self.new 
    # Attempt 2===========
    # self.class.all << self.new
    # Attempt 3===========
    # save
    # below returns Song instance that was initialized
    
    @@all << self.new
    
    
    self
  end
end
