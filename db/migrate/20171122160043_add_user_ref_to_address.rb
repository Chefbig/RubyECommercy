class AddUserRefToAddress < ActiveRecord::Migration[5.1]
  def change
    add_column :addresses, :user, :reference
  end
end
