class ChargesController < ApplicationController
  def new
    @amount = session[:order]["total"]
    @description = session[:order]['description']
  end

  def create

    amount = session[:order]["total"]

    @customer = Stripe::Customer.create(email: params[:stripeEmail],
                                        source: params[:stripeToken])

    @charge = Stripe::Charge.create(customer: @customer.id,
                                    amount: amount,
                                    description: session[:order]['customer'],
                                    currency: 'cad')


    if @charge.paid && @charge.amount == amount
      #order = Order.create()
      session[:cart].clear
      flash[:notice] = "Payment of " + ActionController::Base.helpers.number_to_currency(@charge.amount/100) + " was success."
      flash[:error] = "Payment of " + ActionController::Base.helpers.number_to_currency(@charge.amount/100) + " was success."
    else
      flash[:notice] = "Payment of " + ActionController::Base.helpers.number_to_currency(@charge.amount/100) + " was not success."
    end
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to carts_path
  end
end
