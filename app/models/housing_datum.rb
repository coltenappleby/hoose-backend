class HousingDatum < ApplicationRecord
  belongs_to :zip_code

  validates :zip_code_id, :month, :year, :sales_count, :avg_price, presence: true

  
end
