class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def search
    #@var = params[:id]
    #params => {"utf8"=>"✓", "category"=>"2", "search"=>"21323",
    # "commit"=>"Search", "controller"=>"products",
    # "action"=>"show", "id"=>"search"}
    #@products =  Product.find(params[:id])
  end

  def show
    #@images = Image.find(product_id: params[:id])

  end

  def all
    @products = Product.all
  end

  private
  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :stock_quantity, :price , :category)
  end
end
