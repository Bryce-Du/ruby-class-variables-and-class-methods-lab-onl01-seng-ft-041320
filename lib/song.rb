class Song 
  attr_accessor :name, :artist, :genre 
  @@count = 0 
  @@genres = []
  
  def initialize (genre)
    @@count += 1
    @@genres << genre
  end
  def count
    @@count
  end
  def genres
    unique_genres = []
    @@genres.each do |genre|
      unique_genres << genre unless unique_genres.include?(genre)
    end
    unique_genres
  end
end