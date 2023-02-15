require "pry"

class Song
 attr_accessor :name, :artist, :genre
 @@count = 0
 @@artist =[]
 @@genres = []
 @@artists = []

    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1

        @@genres.push genre
        @@artists << artist 
        
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
        
    end

    def self.genres
        @@genres.uniq

        
    end

    def self.genre_count
        @@genres.tally
    end
   
    def self.artist_count

      @@artists.tally
        
    end
end
 #Personal Tests
 s1 = Song.new("Geri inengi", "Wakadinali", "Hip-Hop")
 s2 = Song.new("Nairobi", "Buruklyn boys", "Drill")
 s3 = Song.new("Mc MCA", "Wakadinali", "Hip-Hop")
 s4 = Song.new("Moja safi", "Wakadinali", "Hip-Hop")
 s5 = Song.new("Balance", "Savara", "Pop")
 puts Song.count
 puts Song.genre_count
 puts Song.artist_count
