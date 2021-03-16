class Genre < ActiveRecord::Base
  has_many :song_genres
  has_many :songs, through: :song_genres
  has_many :artists, through: :songs

  def slug
    self.name.gsub(" ", "-")
  end

  def self.reverse_slug_name(name)
    name.gsub("-", " ")
  end
  
end    