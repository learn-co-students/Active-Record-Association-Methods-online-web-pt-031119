class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    self.songs.first.genre
  end

  def song_count
    self.songs.count
  end

  def genre_count
    genre_count = []
    self.songs.each do |song|
      genre_count << song.genre
    end
    genre_count.uniq.count  
  end
end
