class HomeController < ApplicationController
  def index
    #@products = Product.all
    @products = Product.order(:id).page params[:page]
  end

  def about
    @about = About.first
    @address = Address.first
  end
end
