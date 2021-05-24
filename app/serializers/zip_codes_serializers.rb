class ZipCodeSerializer < ActiveModel::Serializer
    attributes :id, :zip, :name, :population, :state, :county, :job_searches

    has_many :job_searches
    # has_many :favorited_zips
end