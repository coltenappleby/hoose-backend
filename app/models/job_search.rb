class JobSearch < ApplicationRecord

    belongs_to :user
    belongs_to :zip_code

    validates :zip_code_id, :radius, :date_posted, :number_of_posts, :user_id, presence: :true
end
