#database
#db\schema.rb
create_table "images", force: :cascade do |t|
  t.string "name"
  t.string "description"
  t.string "file_name"
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
  t.integer "product_id"
  t.index ["product_id"], name: "index_images_on_product_id"
end

#app\uploaders\image_uploader.rb
class ImageUploader < CarrierWave::Uploader::Base
  storage :file
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
end

#app\models\image.rb
class Image < ApplicationRecord
  belongs_to :product
  mount_uploader :file_name, ImageUploader
end

#app\admin\images.rb
ActiveAdmin.register Image do
  permit_params :name, :description, :product_id, :file_name
  form :html => { :multipart => true } do |f|
    f.inputs "Add images" do
      f.input :name
      f.input :description
      f.input :file_name, :as => :file
    end
    f.actions
  end
end
