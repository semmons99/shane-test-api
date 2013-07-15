class UserSerializer < ActiveModel::Serializer
  attributes(*%i(id login email first_name last_name))
end
