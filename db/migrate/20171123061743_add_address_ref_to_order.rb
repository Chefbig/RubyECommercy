class AddAddressRefToOrder < ActiveRecord::Migration[5.1]
  def change
    add_reference :orders, :Address, foreign_key: true
  end
end
