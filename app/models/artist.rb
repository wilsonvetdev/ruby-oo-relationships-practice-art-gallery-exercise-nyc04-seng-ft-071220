class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all 
  end

  def paintings
    Painting.all.select { |painting| painting.artist == self }
  end

  def galleries
    self.paintings.map { |painting| painting.gallery }.uniq
  end

  def cities
    self.galleries.map { |painting| painting.city }.uniq
  end

  def self.total_experience
    Artist.all.sum { |artist| artist.years_experience }
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

  def self.most_prolific
    result = Artist.all.map { |artist| {artist.name => (artist.paintings.count / artist.years_experience.to_f)} }
    # [{"Sandy"=>0.5}, {"Patrick"=>0.16666666666666666}, {"Spongebob"=>0.3333333333333333}, {"Pikachu"=>0.16666666666666666}]
    most_prolific_artist = result.max_by { |artist, value| value }
    most_prolific_artist = most_prolific_artist.keys[0]
    # extrated the key here ^^
    Artist.all.find { |artist| artist.name == most_prolific_artist }
    # find matching artist again because deliverable wants the instance and not string_name
  end

end
