class JobSearchSerializer < ActiveModel::Serializer
    attributes :id, :remote, :salary_estimate, :search_term, :radius, :job_type, :experience_level, :date_posted, :number_of_posts, :zip_code

    belongs_to :user
    # belongs_to :zip_code
end