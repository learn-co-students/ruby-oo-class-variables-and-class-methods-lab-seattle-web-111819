require 'pry'
class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = [ ]
    @@artists = [ ]

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
        # binding.pry
    end

    def self.artists
        @@artists.uniq

    end

    def self.genres
        @@genres.uniq
    end

    def self.count
        @@count
    end

    def self.genre_count
        genre_count = {}
        @@genres.each do|genre| if 
            genre_count[genre] 
            genre_count[genre]+=1 
            else genre_count[genre] = 1
         end
        end
        genre_count
    end

    def self.artist_count
        artist_count = {}
        @@artists.map do|each_artist| if 
            artist_count[each_artist]    #if there is that artist already
            artist_count[each_artist]+=1   #add one more to its value
            else artist_count[each_artist] = 1    #else, new artist will be 1
            end
        end
        artist_count
    end



end
