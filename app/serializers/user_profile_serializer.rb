class UserProfileSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :full_name, :avatar_img, :phone_number, :bio, :gender
end
