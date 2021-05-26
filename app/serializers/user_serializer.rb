class UserSerializer < ActiveModel::Serializer
    attributes :id, :username

    has_many :job_searches
    has_many :favorited_zips
end
