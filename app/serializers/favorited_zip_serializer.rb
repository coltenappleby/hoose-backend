class FavoritedZipSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :zip_code_id

    belongs_to :zip_code
    # belongs_to :user

end
