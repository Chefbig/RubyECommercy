class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :initialize_session

  def initialize_session
    session[:cart] ||= {}
    session[:num] ||= 0
  end

end
