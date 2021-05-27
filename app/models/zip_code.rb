class ZipCode < ApplicationRecord
    has_many :housing_data
    has_many :job_searches
    has_many :favorited_zips

    validates :zip, length: {minimum: 5, maximum: 5}
    validates :zip, presence: :true
end
