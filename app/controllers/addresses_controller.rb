class AddressesController < InheritedResources::Base

  private

    def address_params
      params.require(:address).permit(:firstname, :lastname, :phone, :addressline1, :addressline2, :city, :postalcode, :is_billing_address, :is_shipping_address)
    end
end

