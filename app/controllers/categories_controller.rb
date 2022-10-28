class CategoriesController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :unfound_response
    def index 
        render json: Category.all,status: :ok
    end

    def show
        category = Category.find(params[:id])
        render json: category,status: :ok
    end

    private
    def unfound_response
        render json: {error: "Category not found"},status: :not_found
    end
end
