ActiveAdmin.register Address do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  permit_params :firstname, :lastname, :phone, :addressline1, :addressline2, :city, :postalcode, :is_billing_address, :is_shipping_address, :user_id, :province_id

end
