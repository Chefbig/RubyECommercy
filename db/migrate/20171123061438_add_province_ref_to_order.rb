class AddProvinceRefToOrder < ActiveRecord::Migration[5.1]
  def change
    add_reference :orders, :Province, foreign_key: true
  end
end
