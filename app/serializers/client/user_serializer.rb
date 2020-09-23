class Client::UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone, :active
end
