class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def slug
    self.slug=self.name.gsub(" ", "-")
  end
  
  def self.reverse_slug_name(name)
    name.gsub("-", " ")
  end

end