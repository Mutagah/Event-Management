class SessionsController < ApplicationController
    def create
        # This line shall find a user in the users table if they tender a valid username
        user = User.find_by(username: params[:username])
        # This line shall, if present, and having tendered a correct passwort, create a user session
        if user&.authenticate(params[:password])
            session[:user_id] = user.id
            render json: user, status: :created
        else
            render json: { error: "Invalid Username or password" }, status: :unauthorized
        end
    end

    def destroy
        session.delete :user_id
        head :no_content
    end
end