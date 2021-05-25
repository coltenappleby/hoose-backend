class FavoritedZip < ApplicationRecord
  belongs_to :user
  belongs_to :zip_code

  validates :user_id, :zip_code_id, presence: true

  validates :user_id, uniqueness: { scope: :zip_code_id }


end
