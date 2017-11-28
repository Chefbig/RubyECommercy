class CartsController < ApplicationController
  before_action :initialize_session
  def show
  end

  def add
    id = params[:id].to_i
    new_item = {id  => 1}

    if session[:cart].has_key?(id.to_s)
      session[:cart][id.to_s] = session[:cart][id.to_s] +1
    else
      session[:cart].merge!(new_item) #{|key, oldval, newval| [*oldval].to_a + [*newval].to_a}
    end
    redirect_to :root
  end

  def update

  end

  def initialize_session
    if session[:cart].nil?
      session[:cart] = Hash.new
    end

    if session[:order].nil?
      session[:order] = Hash.new
    end
  end
end
