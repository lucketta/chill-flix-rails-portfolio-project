class Show < ApplicationRecord
  belongs_to :network
  has_many :programs
  has_many :users, through: :programs
end
