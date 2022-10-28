class UserSerializer < ActiveModel::Serializer
    attributes :id,:email, :username,:password_digest, :is_organiser
    has_one :user_profile
    has_many :tickets
    has_many :events
end