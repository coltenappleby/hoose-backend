class HousingDataController < ApplicationController

    def index
        @housing_data = HousingDatum.where(year: [2020, 2021]).where(zip_code_id: ZipCode.all.map{|zipcodeInstance| zipcodeInstance.zip})
        render json: @housing_data
    end

    def show
        @housing_datum = HousingDatum.find(params[:id])
        render json: @housing_datum
    end
end

