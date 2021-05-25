class ZipCodeSerializer < ActiveModel::Serializer
    attributes :id, :zip, :name, :population, :state, :county

    has_many :job_searches
    # has_many :favorited_zips
end