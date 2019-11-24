require 'pry'
class Song
  attr_reader :name, :artist, :genre, :count
  #class variables:
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

#class method for @@count
  def self.count
    @@count
  end

#class method for artists
  def self.artists
    @@artists.uniq
  end

#class method for genres
  def self.genres
    @@genres.uniq
  end

#class method for genre count

  
    #returns a hash of genres and the number of songs that have those genres
    
    #iterate over @@genres array, key = genre name, value = count of genre
    #need to check if genre already exists

    # @@genres.each {|genre| genre_hash[genre] +=1 }

    # @@genres.each do |genre |
    #   if genre_count[genre]
    #     genre_count[genre].value +=1
    #   else
    #     genre_count[genre].value =1
      
    #   end
      
    # end

#     def consolidate_cart(cart) 
#       new_cart = {} 
#       cart.each do |items_array| 
#         items_array.each do |item, attribute_hash| 
#           new_cart[item] ||= attribute_hash 
#           new_cart[item][:count] ? new_cart[item][:count] += 1 :   
#           new_cart[item][:count] = 1 
#       end 
#     end 

# end
# genre_count
# end


    def self.genre_count
        genre_counts = {}
        @@genres.each do |genre|
          if genre_counts[genre]
            genre_counts[genre] +=1
          else genre_counts[genre] = 1
          end
      end
      genre_counts
    end
  

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] +=1
      else artist_count[artist] = 1
      end
  end
  artist_count
end
end