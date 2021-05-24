class HousingDataController < ApplicationController

    def index
        @housing_data = HousingDatum.all
        render json: @housing_data
    end

    def show
        @housing_datum = HousingDatum.find(params[:id])
        render json: @housing_datum
    end
end
