class ListSerializer < ActiveModel::Serializer
  attributes :id, :items

  belongs_to :user
	has_many :items
end
