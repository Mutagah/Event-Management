class UsersController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :unfound_response
    #skip_before_action :authorize, only: [ :create,:show]
    def index
        render json: User.all,status: :ok
    end

    def show
        user = User.find(params[:id])
        render json: user, status: :ok
    end

    def create
        user = User.create!(user_params)
        # session[:user_id] = user.id
        render json: user, status: :created
    end

    private

    def user_params
        params.permit(:email,:username, :password, :password_confirmation, :is_organiser)
    end
end
