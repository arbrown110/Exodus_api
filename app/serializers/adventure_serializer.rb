class AdventureSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url
  has_many :event
end
