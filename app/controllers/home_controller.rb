class HomeController < ApplicationController
  def index
    @products = Product.all
  end

  def about
    @about = About.first
    @address = Address.first
  end
end
