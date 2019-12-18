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
    self.new
    @@all << self
    self
  end

  def self.new_by_name(name)
    @name = name
  end

  def self.create_by_name(name)
    @name = name
    @@all << self
    self
  end

  def self.find_by_name(name)
    @@all.find{|song| song.name == name}
  end

  def self.find_or_create_by_name(name)
    if !!self.find_by_name(name)
      return self.find_by_name(name)
    else
      self.create_by_name(name)
    end
  end

  def self.alphabetical
    self.name.sort
  end

  def self.new_from_filename(file_name)
    song_array = file_name.chomp(".mp3").split(" - ")
    @name = song_array[0]
    @artist_name = song_array[1]
  end

  def self.create_from_filename(file_name)
    self.new_from_filename(file_name)
    self.create
  end

  def self.destroy_all
    @@all.clear
  end
end
