class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :initialize_session
  before_action :add_up, only: [:index]

  def initialize_session
    session[:cart] ||= 0
    session[:num] ||= 0
  end

  def add_up
    session[:num] +=1
    @my_num =session[:num]
    session[:cart] = {"Product"=> @my_num}
  end


end
