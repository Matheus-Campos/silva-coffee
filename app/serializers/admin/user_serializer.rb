class Admin::UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone
end
