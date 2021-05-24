class UsersController < ApplicationController

    def login
        user = User.find_by(username: params[:username])
        # byebug
        if user
            render json: user
        else
            render json: ["invalid username"]
        end    
    end

    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end
end
