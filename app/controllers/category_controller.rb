class CategoryController < ApplicationController
  def index
    @categories = Category.all.order(:id)
  end
end
