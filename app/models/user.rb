class User < ApplicationRecord

    has_many :job_searches

    validates :username, presence: :true
    
end
