class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :number
      t.decimal :total
      t.string :state
      t.decimal :gst
      t.decimal :pst
      t.decimal :hst
      t.decimal :qst
      t.decimal :payment
      t.text :memo

      t.timestamps
    end
  end
end
