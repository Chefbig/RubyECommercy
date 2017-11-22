class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def search
    #@var = params[:id]
    #params => {"utf8"=>"✓", "category"=>"2", "search"=>"21323",
    # "commit"=>"Search", "controller"=>"products",
    # "action"=>"show", "id"=>"search"}
    #@products =  Product.find(params[:id])
    render "/products/search"
  end

  def show
    #@images = Image.find(product_id: params[:id])

  end

  def all
    @products = Product.all
  end

  private
  def set_product
    if !params[:id].is_a? Numeric
      keyword  = "%" + params[:search] + "%"

      if params[:category].blank? || params[:category] == '10'
        @products = Product.where("name like (?) OR description like (?)", keyword, keyword)
      else
        cat = params[:category]
        @products = Category.find(cat).product.where("name like (?) OR description like (?)", keyword, keyword)
      end


    else
      @product = Product.find(params[:id])
    end

  end

  def product_params
    params.require(:product).permit(:name, :description, :stock_quantity, :price , :category)
  end
end
