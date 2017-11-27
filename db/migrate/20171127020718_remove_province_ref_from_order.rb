class RemoveProvinceRefFromOrder < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :Province_id, :string
  end
end
