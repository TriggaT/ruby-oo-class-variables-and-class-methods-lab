require "pry"

class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1  
        @@genres << genre
        @@artists << artist
    end

    def self.count 
        @@count
    end

    def self.genres
        @@genres.uniq
    end
    
    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        gc = {}
        @@genres.each do |gen|
            gc[gen] = @@genres.select {|g| g == gen }.count
        end 
        gc 
         


        
    end

    def self.artist_count
        ac = {}
        @@artists.each do |art|
            ac[art] = @@artists.select {|a| a == art }.count
        end 
        ac 
         
    end 

end




