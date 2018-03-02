class CategoriesController < ApplicationController

  def index
    @categories = Category.all
   render json: @categories
  end

 def show
    @category = Category.find_by(:id => params[:id])
  end

  def new
   @category = Category.new
  end

end
