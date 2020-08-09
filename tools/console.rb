require_relative '../config/environment.rb'

team_gallery = Gallery.new("Team Gallery", "New York")
the_hole = Gallery.new("The Hole", "New York")
moran_bondaroff = Gallery.new("Moran Bondaroff", "Los Angeles")
malborough_contemporary = Gallery.new("Marlborough Contemporary", "London")
galerie_thaddaeus = Gallery.new("Galerie Thaddaeus Ropac", "Paris")

sandy = Artist.new("Sandy", 8)
patrick = Artist.new("Patrick", 12)
spongebob = Artist.new("Spongebob", 9)
pikachu = Artist.new("Pikachu", 6)

#(title, price, artist, gallery)
painting_a = Painting.new("The Turtle", 6000, sandy, team_gallery)
painting_b = Painting.new("The Snail", 4000, sandy, team_gallery)
painting_c = Painting.new("Starfish and the Sea", 7000, sandy, team_gallery)
painting_d = Painting.new("Hawkish Bird", 6550, sandy, the_hole)
painting_e = Painting.new("Turtle and the Lover", 4780, patrick, the_hole)
painting_f = Painting.new("Under the Sea", 7550, patrick, moran_bondaroff)
painting_g = Painting.new("KiKi do you love me", 9000, spongebob, malborough_contemporary)
painting_h = Painting.new("Catching Feeling", 120000, spongebob, malborough_contemporary)
painting_i = Painting.new("Jellyfish", 60000, spongebob, galerie_thaddaeus)
painting_j = Painting.new("Catch Them All", 2500, pikachu, galerie_thaddaeus)

binding.pry

puts "Bob Ross rules."
