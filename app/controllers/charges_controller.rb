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
      order = Order.new
      order.total = session[:order]['total'] / 100.0
      order.state = "Paid"
      order.gst = session[:order]['gst']
      order.pst = session[:order]['pst']
      order.hst = session[:order]['hst']
      order.qst = session[:order]['qst']
      order.province_id = session[:order]['province_id']
      order.user_id = current_user.id
      order.payment = @charge.amount/100.0

      order.save

      session[:cart].each do  |key, value|
        line_item = LineItem.new
        line_item.order_id = order.id
        line_item.product_id = key
        line_item.quantity = value
        line_item.price = Product.where(:id => key).first.price
        line_item.save

      end

      session[:cart].clear
      flash[:notice] = "Payment of " + ActionController::Base.helpers.number_to_currency(@charge.amount/100.0) + " was success."
    else
      flash[:notice] = "Payment of " + ActionController::Base.helpers.number_to_currency(@charge.amount/100.0) + " was not success."
    end
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to carts_path
  end
end
