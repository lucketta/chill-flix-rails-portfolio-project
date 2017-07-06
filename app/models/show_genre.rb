class ShowGenre < ApplicationRecord
  belongs_to :show
  belongs_to :genre
end
