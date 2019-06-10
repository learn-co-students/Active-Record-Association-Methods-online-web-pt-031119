class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    self.artist = Artist.find_or_create_by(name: "Drake")
  end

  def all_artist_names
    self.artist.name
  end
end
