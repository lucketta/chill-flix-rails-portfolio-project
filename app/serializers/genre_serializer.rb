class GenreSerializer < ActiveModel::Serializer
  attributes :id, :name
  belongs_to :show
end
