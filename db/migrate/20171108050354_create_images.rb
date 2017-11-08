class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :name
      t.string :description
      t.string :file_name

      t.timestamps
    end
  end
end
