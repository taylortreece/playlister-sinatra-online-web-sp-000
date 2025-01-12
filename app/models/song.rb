class Song < ActiveRecord::Base
  belongs_to :artist
  has_many :song_genres
  has_many :genres, through: :song_genres

  validates :name, presence: true

  def slug
    self.name.gsub(" ", "-")
  end

  def self.reverse_slug_name(name)
    name.gsub("-", " ")
  end
  
end