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

    def create
        @user = User.create(user_params)
        if @user.valid?
            render json: @user
        else
            render json: user.errors.full_messages
        end
    end

    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            render json: @user
        else
            render json: @user.errors.full_messages
        end
    end


    private

    def user_params
        params.permit(:username)
    end
end
