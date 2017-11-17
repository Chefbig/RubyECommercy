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
      f.input :product
      f.input :file_name, :as => :file, :hint => f.object.file_name.present? \
          ? image_tag(f.object.file_name.url(:thumb)) : content_tag(:span, "No image yet")
    end
    f.actions
  end

end
