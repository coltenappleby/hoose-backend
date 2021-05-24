class ZipCodesController < ApplicationController

    def index
        @all_zip_codes = ZipCode.all
        render json: @all_zip_codes
    end

    def show
        @zip_code = ZipCode.find(params[:id])
        render json: @zip_code
    end
end
