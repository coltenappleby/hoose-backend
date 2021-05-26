class FavoritedZipsController < ApplicationController

    def create
        favorite = FavoritedZip.create(zip_code_id: params[:zip_code_id], user_id: params[:user_id])
        if favorite.valid?
            render json: favorite
        else
            render json: favorite.errors.full_messages
        end
    end

    def destroy
        FavoritedZip.find(params[:id]).destroy
    end
end
