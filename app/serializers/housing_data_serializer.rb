class HousingDatumSerializer < ActiveModel::Serializer
    attributes :id, :zip_code_id, :month, :year, :sales_count, :avg_price 

    # belongs_to :zip_code
end