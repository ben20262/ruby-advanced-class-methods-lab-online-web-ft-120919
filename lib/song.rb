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
    # self.new.tap{ |inst| inst.save }
    inst = self.new
    inst.save
    inst
  end

  def self.new_by_name(name)
    inst = self.new
    inst.name = name
    inst
  end

  def self.create_by_name(name)
    inst = self.create
    inst.name = name
    inst
  end

  def self.find_by_name(name)

  end

  def self.find_or_create_by_name(name)

  end

  def self.alphabetical

  end

  def self.new_from_filename(name)

  end

  def self.destroy_all
    @@all.clear
  end
end
