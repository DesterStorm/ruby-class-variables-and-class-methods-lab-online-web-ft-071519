
class Song 
  # Song methods can all use count 
  @@count = 0
  def self.count 
    @@count
  end 
  
  # makes an array to control genres
  @@genres = []
  
  # only allow an array with uniq elements
  def self.genres
    @@genres.uniq
  end

  # create and count a genre hash made using the uniq genre array elements 
    def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1 
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end
  
  # create an array of artists 
  @@artists = []
  
  # count teh artists in the artists array
  def self.artist_count
    @@artists.inject(Hash.new(0)) { |total, i| total[i] += 1 ;total}
  end
  
  # makes the artists array only count uniq artists
  def self.artists
    @@artists.uniq
  end
  
  # initiate the class varriables and instance variables 
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
  end

  attr_accessor :name, :artist, :genre
end 


