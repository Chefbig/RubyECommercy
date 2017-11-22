class CategoriesController < ApplicationController
  def show
    @categories = Category.find(params[:id])
    @products = @categories.product
  end
end