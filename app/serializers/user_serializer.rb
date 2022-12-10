class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone_number, :password_digest, :is_admin
end
