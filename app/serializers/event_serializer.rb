class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :krio
  belongs_to :adventure
end
