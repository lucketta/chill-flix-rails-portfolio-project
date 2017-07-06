class Show < ApplicationRecord
  belongs_to :network
  has_many :programs
  has_many :users, through: :programs

  has_many :show_genres
  has_many :genres, through: :show_genres


  def genres_attributes=(genres_hashes)
    genres_hashes.each do |i, genre_attributes|
      if genre_attributes[:name].present?
        genre = Genre.find_or_create_by(name: genre_attributes[:name])
        if !self.genres.include?(genre)
          self.show_genres.build(genre: genre)
        end
      end
    end
  end
end
