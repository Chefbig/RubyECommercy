ActiveAdmin.register Image do
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
  permit_params :name, :description, :product_id, :file_name

  form :html => { :multipart => true } do |f|
    f.inputs "Add images" do
      f.input :name
      f.input :description
      f.input :product_id
      f.input :file_name, :as => :file #, input_html: { multiple: true }
    end
    f.actions
  end

end
