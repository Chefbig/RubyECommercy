class AddUserToAddress < ActiveRecord::Migration[5.1]
  def change
    remove_index  :addresses, name: "index_addresses_on_user_id" #, column: :user_id_id
    add_reference :addresses, :user, foreign_key: true
  end
end
