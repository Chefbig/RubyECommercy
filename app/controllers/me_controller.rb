class MeController < ApplicationController
  before_action :authenticate_user!

  def show
    @my_user_session = user_session

    @my_user = current_user

    @user_id = current_user.id

    @addresses = Address.where(:user_id=>@user_id)

    @orders = Order.where(:user_id=>@user_id)



    #@addresses = Address.find()
  end


end
