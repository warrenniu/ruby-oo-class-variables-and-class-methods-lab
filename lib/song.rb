require 'pry'
class Song
    #set attr_accessor for name, artist, genre
    attr_accessor :name, :artist, :genre

    #class variable count that will track number of Song instances created
    @@count = 0
    #class variable genre that will track our genres
    @@genres = []

    #class variable artist that will track our artists
    @@artists = []

    #initialize methof for name, artist, genre. Also increases count by one.
    def initialize(name, artist, genre)
        # binding.pry
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << self.genre
        @@artists << self.artist
    end

    #returns the total count of Song instances
    def self.count
        @@count
    end

    #returns an array of all of the genres of existing songs (no duplicates)
    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    #class method that returns a hash of genres and the number of songs that have those genres
    def self.genre_count
        # binding.pry
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

    #class method that returns a hash of artists and the number of songs that have those artists
    def self.artist_count
        artist_count = {}
        @@artists.each do |artist|
        if artist_count[artist]
            artist_count[artist] += 1
        else
            artist_count[artist] = 1
        end
      end

    artist_count
    end

end