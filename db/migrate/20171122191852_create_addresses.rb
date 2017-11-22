class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :firstname
      t.string :lastname
      t.string :phone
      t.string :addressline1
      t.string :addressline2
      t.string :city
      t.string :postalcode
      t.boolean :is_billing_address
      t.boolean :is_shipping_address

      t.timestamps
    end
  end
end
