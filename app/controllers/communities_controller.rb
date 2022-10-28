class CommunitiesController < ApplicationController
    def index
       render json: Community.all 
    end
end
