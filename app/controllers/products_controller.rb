class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
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
    params.require(:product).permit(:name, :description, :stock_quantity, :price)
  end
end
