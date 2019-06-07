class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.size
  end

  def artist_count
    artists = []
    self.songs.each do |track|
      artists << track.artist 
    end
    artists.size
  end

  def all_artist_names
   artist_name = []
   self.songs.each do |track|
     artist_name << track.artist.name 
   end 
   artist_name
  end
end
