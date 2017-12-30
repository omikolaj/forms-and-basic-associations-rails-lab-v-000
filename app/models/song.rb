class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
  has_many :notes

  def genre_id=(id)
    if id.present?
      self.genre = Genre.find_by(:id => id)
    end
  end

  def artist_name
  end

  def artist_name=(artist)
    if artist.present?
      self.build_artist(:name => artist)
    end
  end

  def notes=(notes)
    
  end

  def notes
    
  end

end

