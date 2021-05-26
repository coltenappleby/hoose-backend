class User < ApplicationRecord

    has_many :job_searches
    has_many :favorited_zips

    validates :username, presence: :true
    validates :username, uniqueness: :true
    
end
