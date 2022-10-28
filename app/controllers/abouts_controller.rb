class AboutsController < ApplicationController
    def index
        render json: About.all,status: :ok
    end
end
