class HomeBannersController < ApplicationController

    def index
        banners = HomeBanner.all
        render json: banners, status: :ok
    end

end
