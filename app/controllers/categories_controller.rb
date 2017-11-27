class CategoriesController < ApplicationController
  def show
    if (params[:id]) != '10'
      @categories = Category.find(params[:id])
      @products = @categories.product.distinct
    else
      @products = Product.all.order(:name)
    end

  end
end