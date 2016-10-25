class AddAdressToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :adress, :text
  end
end
