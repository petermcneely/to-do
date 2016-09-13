class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :list
  has_one :list
end
