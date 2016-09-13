class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :list
  has_one :list
end
