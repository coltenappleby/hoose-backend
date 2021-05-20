class ZipCode < ApplicationRecord
    has_many :housing_data
    has_many :job_searches
end
