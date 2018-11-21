class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  @@hash_genre = {}
  @@hash_artist = {}


  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@genres << genre
    @@artists << artist

    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genres
    @@genres.uniq!
  end

  def self.genre_count
    @@genres.each do |genre|
      if @@hash_genre.has_key?(genre)
        @@hash_genre[genre] += 1
      else
        @@hash_genre[genre] = 1
      end
    end
    @@hash_genre
  end

  def self.artist_count
    @@artists.each do |artist|
      if @@hash_artist.has_key?(artist)
        @@hash_artist[artist] += 1
      else
        @@hash_artist[artist] = 1
      end
    end
    @@hash_artist
  end

end
