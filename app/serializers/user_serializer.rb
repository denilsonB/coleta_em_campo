class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password, :cpf
end
