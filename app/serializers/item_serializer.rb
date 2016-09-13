class ItemSerializer < ActiveModel::Serializer
  attributes :id, :task

  belongs_to :list
end
