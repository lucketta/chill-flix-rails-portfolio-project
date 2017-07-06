class Genre < ApplicationRecord
  has_many :show_genres
  has_many :shows, through: :show_genres
end
