class Song 
  attr_accessor :name, :genre, :artist 
  @@count = 0 
  @@genres = []
  @@artists = []
  
  def initialize (name, artist, genre)
    @@count += 1
    @@genres << genre
    @@artists << artist
    @name = name
    @genre = genre 
    @artist = artist
  end
  def self.count
    @@count
  end
  def self.genres
    unique_genres = []
    @@genres.each do |genre|
      unique_genres << genre unless unique_genres.include?(genre)
    end
    unique_genres
  end
  def self.artists
    unique_artists = []
    @@artists.each do |artist|
      unique_artists << artist unless unique_artists.include?(artist)
    end
  end 
  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|
      if genre_hash.include?(genre)
        genre_hash[genre] += 1 
      else
        genre_hash[genre] = 1
      end
    end
  end
  
end