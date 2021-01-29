class EventSerializer < ActiveModel::Serializer
  attributes :id, :adventure_id, :title, :description, :krio
  belongs_to :adventure
end
