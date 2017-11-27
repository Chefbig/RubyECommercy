class RemoveAddressRefFromOrder < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :Address_id, :string
  end
end
