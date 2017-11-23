class OrdersController < InheritedResources::Base

  private

    def order_params
      params.require(:order).permit(:number, :total, :state, :gst, :pst, :hst, :qst, :payment, :memo)
    end
end

