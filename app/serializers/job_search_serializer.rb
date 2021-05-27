class JobSearchSerializer < ActiveModel::Serializer
    attributes :id, :remote, :salary_estimate, :search_term, :radius, :job_type, :experience_level, :date_posted, :number_of_posts, :zip_code, :search_date

    belongs_to :user
    # belongs_to :zip_code

    def search_date
        object.created_at.strftime("%Y-%m-%d ")
    end

    def remote
        if object.remote == false
            return "not-remote"
        else
            return "remote"
        end
    end
end