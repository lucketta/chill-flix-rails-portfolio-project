class ShowSerializer < ActiveModel::Serializer
  attributes :id, :name, :air_date, :air_time, :description,:network_id
  has_many :genres
end
