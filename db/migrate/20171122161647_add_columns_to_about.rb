class AddColumnsToAbout < ActiveRecord::Migration[5.1]
  def change
    add_column :abouts, :phone, :string
    add_column :abouts, :address1, :string
    add_column :abouts, :address2, :string
    add_column :abouts, :city, :strings
    add_column :abouts, :postalcode, :string
  end
end
